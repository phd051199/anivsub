import 'dart:async';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/plugin/plugin.dart';
import 'package:anivsub/core/service/shared_preferences_service.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
import 'package:collection/collection.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

part 'watch_bloc.freezed.dart';
part 'watch_event.dart';
part 'watch_state.dart';

@injectable
class WatchBloc extends BaseBloc<WatchEvent, WatchState> {
  WatchBloc(
    this._getPlayDataUseCase,
    this._getAnimeDetailUseCase,
    this._episodeListUseCase,
    this._sharedPreferenceService,
    this._getLastChapUseCase,
  ) : super(const WatchInitial()) {
    on<InitWatch>(_onInitWatch);
    on<LoadWatch>(_onLoadWatch);
    on<LoadComment>(_onLoadComment);
    on<ChangeSeasonTab>(_onChangeSeasonTab);
    on<ChangeEpisode>(_onChangeEpisode);
    on<PostComment>(_onPostComment);
    on<DeleteComment>(_onDeleteComment);
    on<LoadMoreComments>(_onLoadMoreComments);
    on<GetFbCookies>(_onGetFbCookies);
    on<LikeComment>(_onLikeComment);
    on<Logout>(_onLogout);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetAnimeDetailUseCase _getAnimeDetailUseCase;
  final GetListEpisodeUseCase _episodeListUseCase;
  final SharedPreferenceService _sharedPreferenceService;
  final GetLastChapUseCase _getLastChapUseCase;

  late FBCommentPlugin _fbCommentPlugin;
  late String _afterCursor = '';
  final CancelToken cancelToken = CancelToken();

  Future<void> _onInitWatch(InitWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());

    _initializeFbCommentPlugin(event);

    try {
      final animeDetail = await _fetchDetailData(event.id);
      emit(
        WatchLoaded(detail: animeDetail),
      );

      add(LoadWatch(id: event.id));
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  Future<void> _onLoadComment(
    LoadComment event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final result = await _fbCommentPlugin.getComments();
    _updateAfterCursor(result);

    emit(
      currentState.copyWith(
        comments: result.comments,
        totalCommentCount: result.meta?.totalCount,
        fbUser: _fbCommentPlugin.loginUser,
      ),
    );
  }

  void _initializeFbCommentPlugin(InitWatch event) {
    if (event.fbCommentPlugin != null) {
      _fbCommentPlugin = event.fbCommentPlugin!;
    } else {
      _fbCommentPlugin.updateUrlAndGetComments(
        '$ogHostCurl/phim/-${event.id.extractId()}/',
      );
    }
  }

  void _updateAfterCursor(CommentDataEntity commentData) {
    _afterCursor = commentData.meta?.afterCursor ?? '';
  }

  Future<void> _onGetFbCookies(
    GetFbCookies event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final result = await _fbCommentPlugin.setup(force: true);
    final fbUser = result
        .initResponse.meta?.actors?[result.initResponse.meta?.userId]
        ?.toEntity();

    emit(
      currentState.copyWith(fbUser: fbUser),
    );
  }

  Future<void> _onLogout(Logout event, Emitter<WatchState> emit) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    await _fbCommentPlugin.logout();
    emit(currentState.copyWith(fbUser: null));
  }

  Future<void> _onLoadMoreComments(
    LoadMoreComments event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded || currentState.isCmtLoading) return;

    try {
      emit(
        currentState.copyWith(isCmtLoading: true),
      );

      final newComments = await _loadAndMergeComments(currentState);
      emit(
        currentState.copyWith(comments: newComments),
      );
    } catch (e) {
      Log.debug('Error loading more comments: $e');
    }
  }

  Future<List<CommentEntity>> _loadAndMergeComments(
    WatchLoaded currentState,
  ) async {
    final result = await _fbCommentPlugin.getMoreComments(_afterCursor);
    _afterCursor = result.meta?.afterCursor ?? '';

    final existingCommentIds = _getExistingCommentIds(currentState);
    final newUniqueComments =
        _filterNewComments(result.comments, existingCommentIds);

    return [
      ...?currentState.comments,
      ...newUniqueComments,
    ];
  }

  Set<String> _getExistingCommentIds(WatchLoaded state) {
    return Set<String>.from(state.comments?.map((c) => c.id) ?? []);
  }

  List<CommentEntity> _filterNewComments(
    List<CommentEntity>? newComments,
    Set<String> existingIds,
  ) {
    return newComments
            ?.where((comment) => !existingIds.contains(comment.id))
            .toList() ??
        [];
  }

  Future<void> _onPostComment(
    PostComment event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) {
      return;
    }

    try {
      final loadingState = currentState.copyWith(isCmtLoading: true);
      emit(loadingState);

      final id = await _fbCommentPlugin.postComment(event.comment);
      final newComment = _createNewComment(id, event.comment);

      emit(
        _updateStateWithNewComment(currentState, newComment),
      );
    } catch (e) {
      Log.debug('Error posting comment: $e');
    }
  }

  Future<void> _onLikeComment(
    LikeComment event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final likedComments = await _getLikedComments();
    final isLiked = likedComments.contains(event.commentId);

    await _updateCommentLikeStatus(
      currentState,
      event.commentId,
      isLiked,
      emit,
    );
    await _updateLikedCommentsInStorage(event.commentId, isLiked);
    await _fbCommentPlugin.likeComment(event.commentId, !isLiked);
  }

  Future<List<String>> _getLikedComments() async {
    return _sharedPreferenceService.getStringList(
      'liked_comments',
    );
  }

  Future<void> _updateCommentLikeStatus(
    WatchLoaded currentState,
    String commentId,
    bool isLiked,
    Emitter<WatchState> emit,
  ) async {
    final updatedComments = currentState.comments?.map((c) {
      if (c.id == commentId) {
        return c.copyWith(likeCount: c.likeCount + (isLiked ? -1 : 1));
      }
      return c;
    }).toList();

    emit(currentState.copyWith(comments: updatedComments));
  }

  Future<void> _updateLikedCommentsInStorage(
    String commentId,
    bool isLiked,
  ) async {
    final likedComments = await _getLikedComments();

    if (isLiked) {
      likedComments.remove(commentId);
    } else {
      likedComments.add(commentId);
    }

    await _sharedPreferenceService.setStringList(
      'liked_comments',
      likedComments,
    );
  }

  Future<void> _onDeleteComment(
    DeleteComment event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) {
      return;
    }

    final updatedComments =
        currentState.comments?.where((c) => c.id != event.commentId).toList();

    final updatedState = currentState.copyWith(
      comments: updatedComments,
      isCmtLoading: true,
    );

    emit(updatedState);

    try {
      await _fbCommentPlugin.deleteComment(event.commentId);

      emit(
        updatedState.copyWith(isCmtLoading: false),
      );
    } catch (e) {
      Log.debug('Error deleting comment: $e');
    }
  }

  CommentEntity _createNewComment(
    String id,
    String commentBody,
  ) {
    return CommentEntity(
      id: id,
      authorName: _fbCommentPlugin.loginUser?.name ?? '',
      authorThumbSrc: _fbCommentPlugin.loginUser?.thumbSrc ?? '',
      body: commentBody,
      timestamp: DateFormat(getFBDateFormat()).format(DateTime.now()),
      likeCount: 0,
    );
  }

  WatchLoaded _updateStateWithNewComment(
    WatchLoaded currentState,
    CommentEntity newComment,
  ) {
    final newComments = [newComment, ...?currentState.comments];

    return currentState.copyWith(
      comments: newComments,
    );
  }

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    try {
      final currentState = state;
      if (currentState is! WatchLoaded) return;

      final futures = await Future.wait([
        _fetchAnimeData(
          event.id,
          currentState.detail,
        ),
        _getLastChapUseCase.send(
          GetLastChapUseCaseInput(
            seasonId: currentState.detail.pathToView?.parseSeasonId() ?? '',
          ),
        ),
      ]);

      final (chaps, listEpisodeSkip) =
          futures.first as (List<ChapDataEntity>, ListEpisodeResponseEntity?);
      final latestChapUseCaseOutput = futures.last as GetLastChapUseCaseOutput;

      final chapterLists = _initializeChapterLists(
        currentState.detail,
        event.id,
        chaps,
        listEpisodeSkip,
      );
      final latestChap = latestChapUseCaseOutput.result;
      final initialChap = chaps.firstWhereOrNull(
            (chap) => chap.id == latestChap?.chapId,
          ) ??
          chaps.first;

      final initialData = InitialData(
        initialChap: initialChap,
        initialPosition: latestChap?.cur ?? 0,
      );

      emit(
        currentState.copyWith(
          chaps: chaps,
          tabViewItems: chapterLists,
          initialData: initialData,
        ),
      );

      add(LoadComment(id: event.id));
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  Future<void> _onChangeSeasonTab(
    ChangeSeasonTab event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final newIndex = currentState.detail.season.indexWhere(
      (item) => item.path == event.id,
    );
    if (!_shouldUpdateTab(currentState, newIndex)) return;

    try {
      final animeDetail = await _fetchDetailData(event.id);
      final (chaps, listEpisodeSkip) = await _fetchAnimeData(
        event.id,
        animeDetail,
      );
      final updatedTabViewItems = _updateChapterLists(
        currentState,
        newIndex,
        chaps,
        animeDetail,
        listEpisodeSkip,
      );
      emit(
        currentState.copyWith(
          chaps: chaps,
          tabViewItems: updatedTabViewItems,
        ),
      );
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  bool _shouldUpdateTab(WatchLoaded currentState, int newIndex) {
    return currentState.tabViewItems != null &&
        (newIndex != -1 && currentState.tabViewItems![newIndex] == null);
  }

  List<TabViewItem?>? _initializeChapterLists(
    AnimeDetailEntity animeDetail,
    String currentId,
    List<ChapDataEntity> currentChaps,
    ListEpisodeResponseEntity? listEpisodeSkip,
  ) {
    final chapterLists = List<TabViewItem?>.filled(
      animeDetail.season.length,
      null,
      growable: true,
    );
    final currentIndex = animeDetail.season.indexWhere(
      (item) => item.path == currentId,
    );

    if (currentIndex != -1) {
      chapterLists[currentIndex] = _createTabViewItem(
        currentChaps,
        animeDetail,
        listEpisodeSkip,
      );
    } else {
      chapterLists.add(
        _createTabViewItem(currentChaps, animeDetail, listEpisodeSkip),
      );
    }

    return chapterLists;
  }

  TabViewItem _createTabViewItem(
    List<ChapDataEntity> chaps,
    AnimeDetailEntity animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
  ) {
    return TabViewItem(
      chaps: chaps,
      animeDetail: animeDetail,
      listEpisode: listEpisodeSkip,
    );
  }

  List<TabViewItem?>? _updateChapterLists(
    WatchLoaded currentState,
    int newIndex,
    List<ChapDataEntity> newChaps,
    AnimeDetailEntity newAnimeDetail,
    ListEpisodeResponseEntity? newListEpisodeSkip,
  ) {
    final updatedTabViewItems =
        List<TabViewItem?>.from(currentState.tabViewItems!);
    updatedTabViewItems[newIndex] =
        _createTabViewItem(newChaps, newAnimeDetail, newListEpisodeSkip);
    return updatedTabViewItems;
  }

  Future<(List<ChapDataEntity>, ListEpisodeResponseEntity?)> _fetchAnimeData(
    String id,
    AnimeDetailEntity detail,
  ) async {
    final (chaps, listEpisodeSkip) = await (
      _fetchChaps(id),
      _loadAdditionalAnimeData(detail).catchError((_) => null),
    ).wait;

    return (chaps, listEpisodeSkip);
  }

  Future<AnimeDetailEntity> _fetchDetailData(String id) async {
    final output = await _getAnimeDetailUseCase.send(
      GetAnimeDetailUseCaseInput(id: id, cancelToken: cancelToken),
    );
    return output.result;
  }

  Future<List<ChapDataEntity>> _fetchChaps(String id) async {
    final playDataOutput = await _getPlayDataUseCase.send(
      GetPlayDataUseCaseInput(id: id, cancelToken: cancelToken),
    );
    return playDataOutput.result.chaps;
  }

  void _onChangeEpisode(ChangeEpisode event, Emitter<WatchState> emit) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final newState = currentState.copyWith(
      detail: event.animeDetail,
      initialData: null,
    );
    emit(newState);

    List<CommentEntity>? comments;
    int? totalCommentCount;
    final id = event.animeDetail.pathToView?.cleanPathToView().extractId();
    final href = '$ogHostCurl/phim/-$id/';

    if (href != _fbCommentPlugin.config.href) {
      try {
        final initResponse = await _fbCommentPlugin.updateUrlAndGetComments(
          href,
        );
        _afterCursor = initResponse.meta?.afterCursor ?? '';
        comments = initResponse.comments ?? [];
        totalCommentCount = initResponse.meta?.totalCount ?? 0;
      } catch (e) {
        Log.debug('Error updating url and getting comments: $e');
      }
    }

    emit(
      newState.copyWith(
        comments: comments ?? currentState.comments,
        totalCommentCount: totalCommentCount ?? currentState.totalCommentCount,
      ),
    );
  }

  Future<ListEpisodeResponseEntity?> _loadAdditionalAnimeData(
    AnimeDetailEntity detail,
  ) async {
    try {
      final names = _extractAnimeNames(detail);
      final listEpisodeOutput = await _episodeListUseCase.send(
        GetListEpisodeUseCaseInput(animeName: names, cancelToken: cancelToken),
      );
      return listEpisodeOutput.result;
    } catch (e) {
      Log.debug('Error loading additional data: $e');
      return null;
    }
  }

  List<String> _extractAnimeNames(AnimeDetailEntity detail) {
    return [detail.name, ...detail.othername.split(',')]
        .map((name) => name.trim())
        .where((name) => name.isNotEmpty)
        .toList();
  }

  @override
  Future<void> close() async {
    cancelToken.cancel('WatchBloc closed');
    super.close();
  }
}
