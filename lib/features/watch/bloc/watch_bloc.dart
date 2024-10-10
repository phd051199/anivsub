import 'package:anivsub/core/base/base.dart';
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
  ) : super(WatchInitial()) {
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
    emit(WatchLoading());

    final playDataOutput = await _getPlayDataUseCase.send(
      GetPlayDataUseCaseInput(id: event.id),
    );
    final ChapDataEntity chap = playDataOutput.result.chaps.first;
    final link = await _getChapter(chap);

    emit(
      WatchLoaded(
        link: link,
        playingId: chap.id,
        chaps: playDataOutput.result.chaps,
      ),
    );

    final WatchState currentState = state;
    if (currentState is! WatchLoaded) {
      return;
    }

    try {
      final getListEpisodeOutput = await _getListEpisodeUseCase.send(
        GetListEpisodeUseCaseInput(
          animeName: _cleanPath(event.id),
        ),
      );
      final String currentId = getListEpisodeOutput.result.list
          .where(
            (element) =>
                int.tryParse(element.name) ==
                int.tryParse(currentState.playingChap!),
          )
          .first
          .id;
      final getEpisodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
        ),
      );

      emit(
        currentState.copyWith(
          listEpisode: getListEpisodeOutput.result,
          episodeSkip: getEpisodeSkipOutput.result,
        ),
      );
    } catch (e) {
      emit(
        currentState.copyWith(
          listEpisode: null,
          episodeSkip: null,
        ),
      );
    }
  }

  void _onToggleSkipIntro(ToggleSkipIntro event, Emitter<WatchState> emit) {
    final WatchState currentState = state;
    if (currentState is! WatchLoaded) {
      return;
    }
    emit(
      currentState.copyWith(
        skipIntro: !currentState.skipIntro,
      ),
    );
  }

  void _onChangeChap(ChangeChap event, Emitter<WatchState> emit) async {
    final WatchState currentState = state;
    if (currentState is! WatchLoaded) {
      return;
    }

    emit(
      currentState.copyWith(
        link: '',
        playingId: event.chap.id,
        playingChap: event.chap.name,
      ),
    );

    final newLink = await _getChapter(event.chap);
    emit(
      currentState.copyWith(
        link: newLink,
        playingId: event.chap.id,
        playingChap: event.chap.name,
      ),
    );

    try {
      final String currentId = currentState.listEpisode!.list
          .where(
            (element) =>
                int.tryParse(element.name) == int.tryParse(event.chap.name),
          )
          .first
          .id;
      final getEpisodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
        ),
      );

      emit(
        currentState.copyWith(
          link: newLink,
          playingId: event.chap.id,
          playingChap: event.chap.name,
          episodeSkip: getEpisodeSkipOutput.result,
        ),
      );
    } catch (e) {
      emit(
        currentState.copyWith(
          link: newLink,
          playingId: event.chap.id,
          playingChap: event.chap.name,
          episodeSkip: null,
        ),
      );
    }
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
      DecryptHlsUseCaseInput(
        hash: hlsOutput.result.link.first.file,
      ),
    );

    return decryptOutput.result;
  }

  String _cleanPath(String url) {
    String cleaned = url.replaceAll('/phim/', '');

    int lastDashIndex = cleaned.lastIndexOf('-');
    if (lastDashIndex != -1) {
      cleaned = cleaned.substring(0, lastDashIndex);
    }

    return cleaned;
  }
}
