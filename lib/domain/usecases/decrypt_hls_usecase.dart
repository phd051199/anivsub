import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'decrypt_hls_usecase.freezed.dart';

@injectable
class DecryptHlsUseCase
    extends BaseFutureUseCase<DecryptHlsUseCaseInput, DecryptHlsUseCaseOutput> {
  const DecryptHlsUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<DecryptHlsUseCaseOutput> buildUseCase(
    DecryptHlsUseCaseInput input,
  ) async {
    final result = await _repository.decryptHls(
      input.hash,
      cancelToken: input.cancelToken,
    );
    return DecryptHlsUseCaseOutput(result: result);
  }
}

@freezed
class DecryptHlsUseCaseInput extends BaseInput with _$DecryptHlsUseCaseInput {
  const factory DecryptHlsUseCaseInput({
    required String hash,
    CancelToken? cancelToken,
  }) = _DecryptHlsUseCaseInput;
}

@freezed
class DecryptHlsUseCaseOutput extends BaseOutput
    with _$DecryptHlsUseCaseOutput {
  const factory DecryptHlsUseCaseOutput({
    required String result,
  }) = _DecryptHlsUseCaseOutput;
}
