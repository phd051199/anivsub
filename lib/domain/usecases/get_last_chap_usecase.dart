import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain_exports.dart';

part 'get_last_chap_usecase.freezed.dart';

@injectable
class GetLastChapUseCase extends BaseFutureUseCase<GetLastChapUseCaseInput,
    GetLastChapUseCaseOutput> {
  const GetLastChapUseCase(this._repository);
  final HistoryRepository _repository;

  @protected
  @override
  Future<GetLastChapUseCaseOutput> buildUseCase(
    GetLastChapUseCaseInput input,
  ) async {
    final result = await _repository.getLastChap(
      seasonId: input.seasonId,
    );
    return GetLastChapUseCaseOutput(result: result);
  }
}

@freezed
class GetLastChapUseCaseInput extends BaseInput with _$GetLastChapUseCaseInput {
  const factory GetLastChapUseCaseInput({
    required String seasonId,
  }) = _GetLastChapUseCaseInput;
}

@freezed
class GetLastChapUseCaseOutput extends BaseOutput
    with _$GetLastChapUseCaseOutput {
  const factory GetLastChapUseCaseOutput({
    ChapterProgressEntity? result,
  }) = _GetLastChapUseCaseOutput;
}
