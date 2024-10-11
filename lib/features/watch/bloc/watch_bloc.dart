import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/domain/usecases/get_episode_skip_usecase.dart';
import 'package:anivsub/domain/usecases/get_list_episode_usecase.dart';
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

  void _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    emit(const WatchLoading());

    try {
      final playDataOutput = await _getPlayDataUseCase.send(
        GetPlayDataUseCaseInput(id: event.id),
      );
      final chap = playDataOutput.result.chaps.first;
      final link = await _getChapter(chap);

      emit(
        WatchLoaded(
          link: link,
          playingId: chap.id,
          chaps: playDataOutput.result.chaps,
          poster: playDataOutput.result.poster,
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
      final getListEpisodeOutput = await _getListEpisodeUseCase.send(
        GetListEpisodeUseCaseInput(animeName: _cleanPath(id)),
      );

      final currentId = _findMatchingEpisodeId(
        getListEpisodeOutput.result.list,
        currentState.playingChap!,
      );

      final getEpisodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(id: currentId),
      );

      emit(
        currentState.copyWith(
          listEpisode: getListEpisodeOutput.result,
          episodeSkip: getEpisodeSkipOutput.result,
        ),
      );
    } catch (_) {
      emit(currentState.copyWith(listEpisode: null, episodeSkip: null));
    }
  }

  void _onChangeChap(ChangeChap event, Emitter<WatchState> emit) async {
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

    final newLink = await _getChapter(event.chap);

    emit(
      currentState.copyWith(
        link: newLink,
        playingId: event.chap.id,
        playingChap: event.chap.name,
        chapLoading: false,
      ),
    );

    try {
      final currentId = _findMatchingEpisodeId(
        currentState.listEpisode!.list,
        event.chap.name,
      );

      final getEpisodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(id: currentId),
      );

      emit(
        currentState.copyWith(
          link: newLink,
          playingId: event.chap.id,
          playingChap: event.chap.name,
          episodeSkip: getEpisodeSkipOutput.result,
          chapLoading: false,
        ),
      );
    } catch (_) {
      emit(
        currentState.copyWith(
          link: newLink,
          playingId: event.chap.id,
          playingChap: event.chap.name,
          episodeSkip: null,
          chapLoading: false,
        ),
      );
    }
  }

  void _onToggleSkipIntro(ToggleSkipIntro event, Emitter<WatchState> emit) {
    final currentState = state as WatchLoaded;
    emit(currentState.copyWith(skipIntro: !currentState.skipIntro));
  }

  Future<String> _getChapter(ChapDataEntity chap) async {
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
