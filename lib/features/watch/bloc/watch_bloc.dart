import 'dart:async';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/plugin/fb_comment.dart';
import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
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
  ) : super(const WatchInitial()) {
    on<InitWatch>(_onInitWatch);
    on<LoadWatch>(_onLoadWatch);
    on<ChangeSeasonTab>(_onChangeSeasonTab);
    on<ChangeEpisode>(_onChangeEpisode);
    on<PostComment>(_onPostComment);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetAnimeDetailUseCase _getAnimeDetailUseCase;
  final GetListEpisodeUseCase _episodeListUseCase;
  final CancelToken _cancelToken = CancelToken();
  late FBCommentPlugin _fbCommentPlugin;

  Future<void> _onInitWatch(InitWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());
    _fbCommentPlugin = event.fbCommentPlugin!;

    try {
      final (comments, animeDetail) = await _fetchInitialData(event.id);
      emit(_createWatchLoadedState(comments, animeDetail));
      add(LoadWatch(id: event.id));
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  Future<(CommentsData, AnimeDetailEntity)> _fetchInitialData(
    String id,
  ) async {
    final results = await Future.wait([
      _fbCommentPlugin.getComments(),
      _fetchDetailData(id),
    ]);

    return (
      results.first as CommentsData,
      results.last as AnimeDetailEntity,
    );
  }

  WatchLoaded _createWatchLoadedState(
    CommentsData comments,
    AnimeDetailEntity animeDetail,
  ) {
    final parsedComments = CommentParser.parse(comments);
    final FBUser? fbUser = comments.meta.actors?[comments.meta.userID];

    return WatchLoaded(
      detail: animeDetail,
      comments: parsedComments,
      totalCommentCount: comments.meta.totalCount,
      fbUser: fbUser,
    );
  }

  Future<void> _onPostComment(
    PostComment event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) {
      emit(const WatchError('Invalid state for posting comment'));
      return;
    }

    try {
      final data = await _fbCommentPlugin.postComment(event.comment);
      final newComment = _createNewComment(data, event.comment);
      emit(_updateStateWithNewComment(currentState, data, newComment));
    } catch (e) {
      Log.debug('Error posting comment: $e');
    }
  }

  CommentEntity _createNewComment(
    PostCommentResponse data,
    String commentBody,
  ) {
    return CommentEntity(
      id: data.commentID,
      authorName: data.authorName,
      authorThumbSrc: data.authorThumbSrc,
      body: commentBody,
      timestamp:
          DateFormat('dd \'tháng\' MM \'lúc\' HH:mm').format(DateTime.now()),
      likeCount: 0,
    );
  }

  WatchLoaded _updateStateWithNewComment(
    WatchLoaded currentState,
    PostCommentResponse data,
    CommentEntity newComment,
  ) {
    final newComments = [newComment, ...?currentState.comments];
    return currentState.copyWith(
      comments: newComments,
    );
  }

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    try {
      final currentState = state as WatchLoaded;
      final (chaps, listEpisodeSkip) =
          await _fetchAnimeData(event.id, currentState.detail);
      final chapterLists = _initializeChapterLists(
        currentState.detail,
        event.id,
        chaps,
        listEpisodeSkip,
      );
      emit(currentState.copyWith(chaps: chaps, tabViewItems: chapterLists));
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  Future<void> _onChangeSeasonTab(
    ChangeSeasonTab event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state as WatchLoaded;
    final newIndex =
        currentState.detail.season.indexWhere((item) => item.path == event.id);
    if (!_shouldUpdateTab(currentState, newIndex)) return;

    try {
      final animeDetail = await _fetchDetailData(event.id);
      final (chaps, listEpisodeSkip) =
          await _fetchAnimeData(event.id, animeDetail);
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
    final currentIndex =
        animeDetail.season.indexWhere((item) => item.path == currentId);

    if (currentIndex != -1) {
      chapterLists[currentIndex] =
          _createTabViewItem(currentChaps, animeDetail, listEpisodeSkip);
    } else {
      chapterLists
          .add(_createTabViewItem(currentChaps, animeDetail, listEpisodeSkip));
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
      GetAnimeDetailUseCaseInput(id: id, cancelToken: _cancelToken),
    );
    return output.result;
  }

  Future<List<ChapDataEntity>> _fetchChaps(String id) async {
    final playDataOutput = await _getPlayDataUseCase.send(
      GetPlayDataUseCaseInput(id: id, cancelToken: _cancelToken),
    );
    return playDataOutput.result.chaps;
  }

  void _onChangeEpisode(ChangeEpisode event, Emitter<WatchState> emit) {
    final currentState = state as WatchLoaded;
    emit(currentState.copyWith(detail: event.animeDetail));
  }

  Future<ListEpisodeResponseEntity?> _loadAdditionalAnimeData(
    AnimeDetailEntity detail,
  ) async {
    try {
      final names = _extractAnimeNames(detail);
      final listEpisodeOutput = await _episodeListUseCase.send(
        GetListEpisodeUseCaseInput(animeName: names, cancelToken: _cancelToken),
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
    _cancelToken.cancel('WatchBloc closed');
    super.close();
  }
}

class TabViewItem {
  TabViewItem({
    required this.chaps,
    required this.animeDetail,
    required this.listEpisode,
  });

  final List<ChapDataEntity> chaps;
  final AnimeDetailEntity animeDetail;
  final ListEpisodeResponseEntity? listEpisode;
}
