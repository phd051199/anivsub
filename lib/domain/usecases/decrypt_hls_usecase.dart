import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_hls_usecase.freezed.dart';

@injectable
class DecryptHlsUseCase
    extends BaseFutureUseCase<DecryptHlsUseCaseInput, DecryptHlsUseCaseOutput> {
  final AnimeRepository _repository;
  const DecryptHlsUseCase(this._repository);

  @protected
  @override
  Future<DecryptHlsUseCaseOutput> buildUseCase(
    DecryptHlsUseCaseInput input,
  ) async {
    final result = await _repository.decryptHls(input.hash);
    return DecryptHlsUseCaseOutput(result: result);
  }
}

@freezed
class DecryptHlsUseCaseInput extends BaseInput with _$DecryptHlsUseCaseInput {
  const factory DecryptHlsUseCaseInput({
    required String hash,
  }) = _DecryptHlsUseCaseInput;
}

@freezed
class DecryptHlsUseCaseOutput extends BaseOutput
    with _$DecryptHlsUseCaseOutput {
  const factory DecryptHlsUseCaseOutput({
    required String result,
  }) = _DecryptHlsUseCaseOutput;
}
