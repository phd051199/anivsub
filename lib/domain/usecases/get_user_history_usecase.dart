import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_user_history_usecase.freezed.dart';

@injectable
class GetUserHistoryUseCase extends BaseFutureUseCase<
    GetUserHistoryUseCaseInput, GetUserHistoryUseCaseOutput> {
  const GetUserHistoryUseCase(this._repository);
  final HistoryRepository _repository;

  @protected
  @override
  Future<GetUserHistoryUseCaseOutput> buildUseCase(
    GetUserHistoryUseCaseInput input,
  ) async {
    final result = await _repository.queryHistory(
      page: input.page,
      size: input.size,
    );
    return GetUserHistoryUseCaseOutput(result: result);
  }
}

@freezed
class GetUserHistoryUseCaseInput extends BaseInput
    with _$GetUserHistoryUseCaseInput {
  const factory GetUserHistoryUseCaseInput({
    required int page,
    int? size,
  }) = _GetUserHistoryUseCaseInput;
}

@freezed
class GetUserHistoryUseCaseOutput extends BaseOutput
    with _$GetUserHistoryUseCaseOutput {
  const factory GetUserHistoryUseCaseOutput({
    required List<QueryHistoryEntity> result,
  }) = _GetUserHistoryUseCaseOutput;
}
