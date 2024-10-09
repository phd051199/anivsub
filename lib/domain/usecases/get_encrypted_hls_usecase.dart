import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_encrypted_hls_usecase.freezed.dart';

@injectable
class GetEncryptedHlsUseCase extends BaseFutureUseCase<
    GetEncryptedHlsUseCaseInput, GetEncryptedHlsUseCaseOutput> {

  const GetEncryptedHlsUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetEncryptedHlsUseCaseOutput> buildUseCase(
    GetEncryptedHlsUseCaseInput input,
  ) async {
    final result = await _repository.getEncryptedHls(input.data);
    return GetEncryptedHlsUseCaseOutput(result: result);
  }
}

@freezed
class GetEncryptedHlsUseCaseInput extends BaseInput
    with _$GetEncryptedHlsUseCaseInput {
  const factory GetEncryptedHlsUseCaseInput({
    required GetEncryptedHlsRequestEntity data,
  }) = _GetEncryptedHlsUseCaseInput;
}

@freezed
class GetEncryptedHlsUseCaseOutput extends BaseOutput
    with _$GetEncryptedHlsUseCaseOutput {
  const factory GetEncryptedHlsUseCaseOutput({
    required GetEncryptedHlsResponseEntity result,
  }) = _GetEncryptedHlsUseCaseOutput;
}
