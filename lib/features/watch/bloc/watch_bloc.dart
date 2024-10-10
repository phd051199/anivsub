import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/domain/usecases/decrypt_hls_usecase.dart';
import 'package:anivsub/domain/usecases/get_encrypted_hls_usecase.dart';
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
  ) : super(WatchInitial()) {
    on<LoadWatch>(_onLoadWatch);
    on<ChangeChap>(_onChangeChap);
  }

  final GetPlayDataUseCase _getPlayDataUseCase;
  final GetEncryptedHlsUseCase _getEncryptedHlsUseCase;
  final DecryptHlsUseCase _decryptHlsUseCase;

  void _onLoadWatch(LoadWatch event, Emitter<WatchState> emit) async {
    emit(WatchLoading());

    final playDataOutput = await _getPlayDataUseCase.send(
      GetPlayDataUseCaseInput(id: event.id),
    );

    final ChapDataEntity chap = playDataOutput.result.chaps.first;
    final link = await _getChap(chap);

    emit(
      WatchLoaded(
        link: link,
        playingId: chap.id,
        chaps: playDataOutput.result.chaps,
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
      ),
    );

    final newLink = await _getChap(event.chap);

    emit(
      currentState.copyWith(
        link: newLink,
        playingId: event.chap.id,
      ),
    );
  }

  Future<String> _getChap(ChapDataEntity chap) async {
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
}
