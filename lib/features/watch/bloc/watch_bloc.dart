import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:bloc/bloc.dart';
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
  ) : super(const WatchInitial()) {
    on<LoadWatch>(_onLoadWatch);
    on<ChangeSeasonTab>(_onChangeSeasonTab);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetAnimeDetailUseCase _getAnimeDetailUseCase;

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());

    try {
      final (watchData, animeDetail) = await _fetchAnimeData(event.id);
      final chapterLists =
          _initializeChapterLists(animeDetail, event.id, watchData.chaps);

      emit(
        WatchLoaded(
          chaps: watchData.chaps,
          detail: animeDetail,
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
    if (newIndex == -1 || currentState.tabViewItems![newIndex] != null) return;

    try {
      final watchData = await _fetchWatchData(event.id);
      final updatedTabViewItems =
          _updateChapterLists(currentState, newIndex, watchData.chaps);

      emit(
        currentState.copyWith(
          chaps: watchData.chaps,
          tabViewItems: updatedTabViewItems,
        ),
      );
    } catch (e) {
      emit(WatchError(_formatErrorMessage(e)));
    }
  }

  List<List<ChapDataEntity>?> _initializeChapterLists(
    AnimeDetailEntity animeDetail,
    String currentId,
    List<ChapDataEntity> currentChaps,
  ) {
    final chapterLists =
        List<List<ChapDataEntity>?>.filled(animeDetail.season.length, null);
    final currentIndex =
        animeDetail.season.indexWhere((item) => item.path == currentId);

    if (currentIndex != -1) {
      chapterLists[currentIndex] = currentChaps;
    }

    return chapterLists;
  }

  List<List<ChapDataEntity>?> _updateChapterLists(
    WatchLoaded currentState,
    int newIndex,
    List<ChapDataEntity> newChaps,
  ) {
    final updatedTabViewItems =
        List<List<ChapDataEntity>?>.from(currentState.tabViewItems!);
    updatedTabViewItems[newIndex] = newChaps;
    return updatedTabViewItems;
  }

  Future<(_WatchData, AnimeDetailEntity)> _fetchAnimeData(String id) async {
    final watchDataFuture = _fetchWatchData(id);
    final detailDataFuture = _fetchDetailData(id);

    final (watchData, animeDetail) =
        await (watchDataFuture, detailDataFuture).wait;

    return (watchData, animeDetail);
  }

  Future<AnimeDetailEntity> _fetchDetailData(String id) async {
    final output =
        await _getAnimeDetailUseCase.send(GetAnimeDetailUseCaseInput(id: id));
    return output.result;
  }

  Future<_WatchData> _fetchWatchData(String id) async {
    final playDataOutput =
        await _getPlayDataUseCase.send(GetPlayDataUseCaseInput(id: id));

    return _WatchData(
      chaps: playDataOutput.result.chaps,
    );
  }

  String _formatErrorMessage(dynamic error) =>
      'An error occurred: ${error.toString()}';
}

class _WatchData {
  const _WatchData({required this.chaps});

  final List<ChapDataEntity> chaps;
}
