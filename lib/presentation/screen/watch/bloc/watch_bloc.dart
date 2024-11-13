import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/base/base.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/di/shared_export.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:anivsub/shared/plugin/plugin.dart';
import 'package:anivsub/shared/service/service.dart';
import 'package:anivsub/shared/utils/utils.dart';
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
    on<ChangeSeasonTab>(_onChangeSeasonTab);
    on<ChangeEpisode>(_onChangeEpisode);

    on<LoadComments>(_onLoadComments);
    on<PostComment>(_onPostComment);
    on<DeleteComment>(_onDeleteComment);
    on<LoadMoreComments>(_onLoadMoreComments);
    on<GetFbCookies>(_onGetFbCookies);
    on<LikeComment>(_onLikeComment);
    on<LogoutFb>(_onLogoutFb);
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
    _initializeFbCommentPlugin(event);

    try {
      final animeDetail = await _fetchDetailData(event.id);
      safeEmit(
        WatchLoaded(
          detail: animeDetail,
          isCmtLoading: true,
          isChapsLoading: true,
        ),
      );

      add(LoadWatch(id: event.id));
    } catch (e) {
      safeEmit(_errorState('$e'));
    }
  }

  WatchState _errorState(String message) {
    return WatchError(
      message: message,
      chaps: state.chaps,
      initialData: state.initialData,
      detail: state.detail,
      tabViewItems: state.tabViewItems,
      comments: state.comments,
      totalCommentCount: state.totalCommentCount,
      fbUser: state.fbUser,
    );
  }

  Future<void> _onLoadComments(
    LoadComments event,
    Emitter<WatchState> emit,
  ) async {
    final result = await _fbCommentPlugin.getComments();
    _updateAfterCursor(result);

    safeEmit(
      state.copyWith(
        comments: result.comments,
        totalCommentCount: result.meta?.totalCount,
        fbUser: _fbCommentPlugin.loginUser,
        isCmtLoading: false,
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
    final result = await _fbCommentPlugin.setup(force: true);
    final fbUser = result
        .initResponse.meta?.actors?[result.initResponse.meta?.userId]
        ?.toEntity();

    safeEmit(
      state.copyWith(fbUser: fbUser),
    );
  }

  Future<void> _onLogoutFb(LogoutFb event, Emitter<WatchState> emit) async {
    await _fbCommentPlugin.logout();
    safeEmit(state.copyWith(fbUser: null));
  }

  Future<void> _onLoadMoreComments(
    LoadMoreComments event,
    Emitter<WatchState> emit,
  ) async {
    if (state.isCmtLoading) return;

    safeEmit(state.copyWith(isCmtLoading: true));

    try {
      final newComments = await _loadAndMergeComments(state);
      safeEmit(
        state.copyWith(comments: newComments),
      );
    } catch (e) {
      safeEmit(_errorState('$e'));
    } finally {
      safeEmit(state.copyWith(isCmtLoading: false));
    }
  }

  Future<List<CommentEntity>> _loadAndMergeComments(
    WatchState state,
  ) async {
    final result = await _fbCommentPlugin.getMoreComments(_afterCursor);
    _afterCursor = result.meta?.afterCursor ?? '';

    final existingCommentIds = _getExistingCommentIds(state);
    final newUniqueComments =
        _filterNewComments(result.comments, existingCommentIds);

    return [
      ...state.comments?.whereNotNull() ?? [],
      ...newUniqueComments,
    ];
  }

  Set<String> _getExistingCommentIds(WatchState state) {
    return Set<String>.from(state.comments?.map((c) => c?.id) ?? []);
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
    safeEmit(state.copyWith(isCmtLoading: true));

    try {
      final id = await _fbCommentPlugin.postComment(event.comment);
      final newComment = _createNewComment(id, event.comment);

      safeEmit(
        _updateStateWithNewComment(state, newComment),
      );
    } catch (e) {
      safeEmit(_errorState('$e'));
    } finally {
      safeEmit(state.copyWith(isCmtLoading: false));
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
      if (c?.id == commentId) {
        return c?.copyWith(likeCount: c.likeCount + (isLiked ? -1 : 1));
      }
      return c;
    }).toList();

    safeEmit(currentState.copyWith(comments: updatedComments));
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
    if (state is! WatchLoaded) {
      return;
    }

    final updatedComments =
        state.comments?.where((c) => c?.id != event.commentId).toList();

    safeEmit(
      state.copyWith(
        comments: updatedComments,
        isCmtLoading: true,
      ),
    );

    try {
      await _fbCommentPlugin.deleteComment(event.commentId);
    } catch (e) {
      safeEmit(_errorState('$e'));
    } finally {
      safeEmit(state.copyWith(isCmtLoading: false));
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
      timestamp: DateFormat(
        DateTimeUtils.getFBDateFormat(),
      ).format(DateTime.now()),
      likeCount: 0,
    );
  }

  WatchState _updateStateWithNewComment(
    WatchState state,
    CommentEntity newComment,
  ) {
    final newComments = [newComment, ...?state.comments];

    return state.copyWith(
      comments: newComments,
    );
  }

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    try {
      final futures = await Future.wait([
        _fetchAnimeData(
          event.id,
          state.detail!,
        ),
        _getLastChapUseCase.execute(
          GetLastChapUseCaseInput(
            seasonId: state.detail?.pathToView?.parseSeasonId() ?? '',
          ),
        ),
      ]);

      final (chaps, listEpisodeSkip) =
          futures.first as (List<ChapDataEntity>, ListEpisodeResponseEntity?);
      final latestChapUseCaseOutput = futures.last as GetLastChapUseCaseOutput;

      final chapterLists = _initializeChapterLists(
        state.detail!,
        event.id,
        chaps,
        listEpisodeSkip,
      );
      final latestChap = latestChapUseCaseOutput.result;
      final initialChap = chaps.isNotEmpty
          ? (chaps.firstWhereOrNull(
                (chap) => chap.id == latestChap?.chapId,
              ) ??
              chaps.first)
          : null;

      final initialData = InitialData(
        initialChap: initialChap,
        initialPosition: latestChap?.cur ?? 0,
      );

      videoPlayerCubit.updateCurrentChap(
        initialChap,
      );

      safeEmit(
        state.copyWith(
          chaps: chaps,
          tabViewItems: chapterLists,
          initialData: initialData,
          isChapsLoading: false,
        ),
      );

      add(LoadComments(id: event.id));
    } catch (e) {
      safeEmit(_errorState('$e'));
    }
  }

  Future<void> _onChangeSeasonTab(
    ChangeSeasonTab event,
    Emitter<WatchState> emit,
  ) async {
    final newIndex = state.detail?.season.indexWhere(
          (item) => item.path == event.id,
        ) ??
        -1;
    if (!_shouldUpdateTab(state, newIndex)) return;

    try {
      final animeDetail = await _fetchDetailData(event.id);
      final (chaps, listEpisodeSkip) = await _fetchAnimeData(
        event.id,
        animeDetail,
      );
      final updatedTabViewItems = _updateChapterLists(
        state,
        newIndex,
        chaps,
        animeDetail,
        listEpisodeSkip,
      );

      safeEmit(
        state.copyWith(
          tabViewItems: updatedTabViewItems,
        ),
      );
    } catch (e) {
      safeEmit(_errorState('$e'));
    }
  }

  bool _shouldUpdateTab(WatchState state, int newIndex) {
    return state.tabViewItems != null &&
        (newIndex != -1 && state.tabViewItems![newIndex] == null);
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
    WatchState state,
    int newIndex,
    List<ChapDataEntity> newChaps,
    AnimeDetailEntity newAnimeDetail,
    ListEpisodeResponseEntity? newListEpisodeSkip,
  ) {
    final updatedTabViewItems = List<TabViewItem?>.from(state.tabViewItems!);
    updatedTabViewItems[newIndex] =
        _createTabViewItem(newChaps, newAnimeDetail, newListEpisodeSkip);
    return updatedTabViewItems;
  }

  Future<(List<ChapDataEntity>, ListEpisodeResponseEntity?)> _fetchAnimeData(
    String id,
    AnimeDetailEntity detail,
  ) async {
    final (chaps, listEpisodeSkip) = await (
      _fetchChaps(id).catchError((_) => <ChapDataEntity>[]),
      _loadAdditionalAnimeData(detail).catchError((_) => null),
    ).wait;

    return (chaps, listEpisodeSkip);
  }

  Future<AnimeDetailEntity> _fetchDetailData(String id) async {
    final output = await _getAnimeDetailUseCase.execute(
      GetAnimeDetailUseCaseInput(id: id, cancelToken: cancelToken),
    );
    return output.result;
  }

  Future<List<ChapDataEntity>> _fetchChaps(String id) async {
    final playDataOutput = await _getPlayDataUseCase.execute(
      GetPlayDataUseCaseInput(id: id, cancelToken: cancelToken),
    );
    return playDataOutput.result.chaps;
  }

  void _onChangeEpisode(ChangeEpisode event, Emitter<WatchState> emit) async {
    if (state is! WatchLoaded || state.detail == event.animeDetail) return;

    safeEmit(
      state.copyWith(
        detail: event.animeDetail,
        chaps: event.chaps,
        initialData: null,
      ),
    );

    List<CommentEntity>? comments;
    int? totalCommentCount;
    final id = event.animeDetail.pathToView?.cleanPathToView()?.extractId();
    final href = '$ogHostCurl/phim/-$id/';

    if (href != _fbCommentPlugin.config.href) {
      try {
        final initResponse = await _fbCommentPlugin.updateUrlAndGetComments(
          href,
        );
        _afterCursor = initResponse.meta?.afterCursor ?? '';
        comments = initResponse.comments;
        totalCommentCount = initResponse.meta?.totalCount ?? 0;

        safeEmit(
          state.copyWith(
            comments: comments,
            totalCommentCount: totalCommentCount,
            fbUser: _fbCommentPlugin.loginUser,
          ),
        );
      } catch (e) {
        safeEmit(_errorState('$e'));
      }
    }
  }

  Future<ListEpisodeResponseEntity?> _loadAdditionalAnimeData(
    AnimeDetailEntity detail,
  ) async {
    try {
      final names = _extractAnimeNames(detail);
      final listEpisodeOutput = await _episodeListUseCase.execute(
        GetListEpisodeUseCaseInput(animeName: names, cancelToken: cancelToken),
      );
      return listEpisodeOutput.result;
    } catch (e) {
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
