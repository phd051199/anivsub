import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/data/data_exports.dart';
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
    this._getEncryptedHlsUseCase,
    this._decryptHlsUseCase,
    this._getListEpisodeUseCase,
    this._getEpisodeSkipUsecase,
    this._appSettingsUseCases,
  ) : super(const WatchInitial()) {
    on<LoadWatch>(_onLoadWatch);
    on<ChangeChap>(_onChangeChap);
    on<ToggleSkipIntro>(_onToggleSkipIntro);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetEncryptedHlsUseCase _getEncryptedHlsUseCase;
  final DecryptHlsUseCase _decryptHlsUseCase;
  final GetListEpisodeUseCase _getListEpisodeUseCase;
  final GetEpisodeSkipUsecase _getEpisodeSkipUsecase;
  final AppSettingsUseCases _appSettingsUseCases;

  Future<void> _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());

    try {
      final currentAppSettings = await _appSettingsUseCases.getAppSettings();
      final playDataOutput = await _getPlayDataUseCase.send(
        GetPlayDataUseCaseInput(id: event.id),
      );
      final chap = playDataOutput.result.chaps.first;
      final link = await _getChapterLink(chap);

      emit(
        WatchLoaded(
          link: link,
          playingId: chap.id,
          chaps: playDataOutput.result.chaps,
          poster: playDataOutput.result.image,
          skipIntro: currentAppSettings.skipIntro,
        ),
      );

      await _loadAdditionalData(event.id, chap.name, emit);
    } catch (e) {
      emit(WatchError(e.toString()));
    }
  }

  Future<void> _loadAdditionalData(
    String id,
    String chapName,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state as WatchLoaded;
    try {
      final listEpisodeOutput = await _getListEpisodeUseCase.send(
        GetListEpisodeUseCaseInput(animeName: _cleanPath(id)),
      );

      final currentId = _findMatchingEpisodeId(
        listEpisodeOutput.result.list,
        currentState.playingChap!,
      );

      final episodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(id: currentId),
      );

      emit(
        currentState.copyWith(
          listEpisode: listEpisodeOutput.result,
          episodeSkip: episodeSkipOutput.result,
        ),
      );
    } catch (_) {
      emit(currentState.copyWith(listEpisode: null, episodeSkip: null));
    }
  }

  Future<void> _onChangeChap(ChangeChap event, Emitter<WatchState> emit) async {
    final currentState = state as WatchLoaded;
    if (event.chap.id == currentState.playingId) return;

    emit(
      currentState.copyWith(
        link: '',
        playingId: event.chap.id,
        playingChap: event.chap.name,
        chapLoading: true,
      ),
    );

    final newLink = await _getChapterLink(event.chap);
    await _updateStateWithNewChapter(currentState, event.chap, newLink, emit);
  }

  Future<void> _updateStateWithNewChapter(
    WatchLoaded currentState,
    ChapDataEntity chap,
    String newLink,
    Emitter<WatchState> emit,
  ) async {
    try {
      final currentId = _findMatchingEpisodeId(
        currentState.listEpisode!.list,
        chap.name,
      );

      final episodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(id: currentId),
      );

      emit(
        currentState.copyWith(
          link: newLink,
          playingId: chap.id,
          playingChap: chap.name,
          episodeSkip: episodeSkipOutput.result,
          chapLoading: false,
        ),
      );
    } catch (_) {
      emit(
        currentState.copyWith(
          link: newLink,
          playingId: chap.id,
          playingChap: chap.name,
          episodeSkip: null,
          chapLoading: false,
        ),
      );
    }
  }

  Future<void> _onToggleSkipIntro(
    ToggleSkipIntro event,
    Emitter<WatchState> emit,
  ) async {
    final currentState = state as WatchLoaded;
    final currentAppSettings = await _appSettingsUseCases.getAppSettings();

    await _appSettingsUseCases.setAppSettings(
      currentAppSettings.copyWith(skipIntro: !currentState.skipIntro),
    );

    emit(currentState.copyWith(skipIntro: !currentState.skipIntro));
  }

  Future<String> _getChapterLink(ChapDataEntity chap) async {
    final hlsOutput = await _getEncryptedHlsUseCase.send(
      GetEncryptedHlsUseCaseInput(
        data: GetEncryptedHlsRequestEntity(
          id: chap.id,
          link: chap.hash,
          play: chap.play,
          backuplinks: '1',
        ),
      ),
    );

    final decryptOutput = await _decryptHlsUseCase.send(
      DecryptHlsUseCaseInput(hash: hlsOutput.result.link.first.file),
    );

    return decryptOutput.result;
  }

  String _cleanPath(String url) {
    final cleaned = url.replaceAll('/phim/', '');
    final lastDashIndex = cleaned.lastIndexOf('-');
    return lastDashIndex != -1 ? cleaned.substring(0, lastDashIndex) : cleaned;
  }

  String _findMatchingEpisodeId(List<Episode> episodes, String chapName) {
    return episodes
        .firstWhere(
          (element) =>
              element.name.extractFirstInt() == chapName.extractFirstInt(),
        )
        .id;
  }
}
