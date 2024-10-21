import 'dart:async';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

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
    on<InitWatch>(_onInitialWatch);
    on<LoadWatch>(_onLoadWatch);
    on<ChangeSeasonTab>(_onChangeSeasonTab);
    on<ChangeEpisode>(_onChangeEpisode);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetAnimeDetailUseCase _getAnimeDetailUseCase;
  final GetListEpisodeUseCase _episodeListUseCase;
  final CancelToken _cancelToken = CancelToken();

  Future<void> _onInitialWatch(
    InitWatch event,
    Emitter<WatchState> emit,
  ) async {
    emit(const WatchLoading());

    final animeDetail = await _fetchDetailData(event.id);
    emit(WatchLoaded(detail: animeDetail));

    add(LoadWatch(id: event.id));
  }

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    try {
      final currentState = state;
      if (currentState is! WatchLoaded) {
        emit(const WatchError('Invalid state for loading watch'));
        return;
      }

      final (chaps, listEpisodeSkip) =
          await _fetchAnimeData(event.id, currentState);
      final chapterLists = _initializeChapterLists(
        currentState.detail,
        event.id,
        chaps,
        listEpisodeSkip,
      );

      emit(
        currentState.copyWith(
          chaps: chaps,
          tabViewItems: chapterLists,
        ),
      );
    } catch (e) {
      emit(WatchError(_formatErrorMessage(e)));
    }
  }

  Future<void> _onChangeSeasonTab(
    ChangeSeasonTab event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) {
      emit(const WatchError('Invalid state for changing season tab'));
      return;
    }

    final newIndex =
        currentState.detail.season.indexWhere((item) => item.path == event.id);
    if (currentState.tabViewItems == null ||
        (newIndex == -1 || currentState.tabViewItems![newIndex] != null)) {
      return;
    }

    try {
      final (chaps, listEpisodeSkip) =
          await _fetchAnimeData(event.id, currentState);

      final updatedTabViewItems = _updateChapterLists(
        currentState,
        newIndex,
        chaps,
        currentState.detail,
        listEpisodeSkip,
      );

      emit(
        currentState.copyWith(
          chaps: chaps,
          tabViewItems: updatedTabViewItems,
        ),
      );
    } catch (e) {
      emit(WatchError(_formatErrorMessage(e)));
    }
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
      chapterLists[currentIndex] = TabViewItem(
        chaps: currentChaps,
        animeDetail: animeDetail,
        listEpisode: listEpisodeSkip,
      );
    } else {
      chapterLists.add(
        TabViewItem(
          chaps: currentChaps,
          animeDetail: animeDetail,
          listEpisode: listEpisodeSkip,
        ),
      );
    }

    return chapterLists;
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

    updatedTabViewItems[newIndex] = TabViewItem(
      chaps: newChaps,
      animeDetail: newAnimeDetail,
      listEpisode: newListEpisodeSkip,
    );
    return updatedTabViewItems;
  }

  Future<(List<ChapDataEntity>, ListEpisodeResponseEntity?)> _fetchAnimeData(
    String id,
    WatchLoaded currentState,
  ) async {
    final (chaps, listEpisodeSkip) = await (
      _fetchChaps(id),
      _loadAdditionalAnimeData(currentState.detail).catchError((_) => null),
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

  String _formatErrorMessage(dynamic error) => 'An error occurred: $error';

  void _onChangeEpisode(
    ChangeEpisode event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) {
      emit(const WatchError('Invalid state for changing episode'));
      return;
    }

    emit(
      currentState.copyWith(detail: event.animeDetail),
    );
  }

  Future<ListEpisodeResponseEntity?> _loadAdditionalAnimeData(
    AnimeDetailEntity detail,
  ) async {
    try {
      final names = _extractAnimeNames(detail);

      final listEpisodeOutput = await _episodeListUseCase.send(
        GetListEpisodeUseCaseInput(
          animeName: names,
          cancelToken: _cancelToken,
        ),
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
  TabViewItem({this.chaps, this.animeDetail, this.listEpisode});
  late List<ChapDataEntity>? chaps;
  late AnimeDetailEntity? animeDetail;
  late ListEpisodeResponseEntity? listEpisode;
}
