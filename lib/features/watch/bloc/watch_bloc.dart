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
  WatchBloc(this._getPlayDataUseCase, this._appSettingsUseCases)
      : super(const WatchInitial()) {
    on<LoadWatch>(_onLoadWatch);
    on<ToggleSkipIntro>(_onToggleSkipIntro);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final AppSettingsUseCases _appSettingsUseCases;

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());

    try {
      final watchData = await _fetchWatchData(event.id);
      _fetchDetailData();

      emit(
        WatchLoaded(
          chaps: watchData.chaps,
          skipIntro: watchData.skipIntro,
        ),
      );
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  void _fetchDetailData() {
    // TODO: implement _fetchDetailData
  }

  Future<void> _onToggleSkipIntro(
    ToggleSkipIntro event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state;
    if (currentState is! WatchLoaded) return;

    final updatedSkipIntro = !currentState.skipIntro;
    await _updateAppSettings(skipIntro: updatedSkipIntro);
    emit(currentState.copyWith(skipIntro: updatedSkipIntro));
  }

  Future<_WatchData> _fetchWatchData(String id) async {
    final currentAppSettings = await _appSettingsUseCases.getAppSettings();
    final playDataOutput = await _getPlayDataUseCase.send(
      GetPlayDataUseCaseInput(id: id),
    );

    return _WatchData(
      chaps: playDataOutput.result.chaps,
      skipIntro: currentAppSettings.skipIntro,
    );
  }

  Future<void> _updateAppSettings({required bool skipIntro}) async {
    final currentAppSettings = await _appSettingsUseCases.getAppSettings();
    await _appSettingsUseCases.setAppSettings(
      currentAppSettings.copyWith(skipIntro: skipIntro),
    );
  }
}

class _WatchData {
  _WatchData({required this.chaps, required this.skipIntro});
  final List<ChapDataEntity> chaps;
  final bool skipIntro;
}
