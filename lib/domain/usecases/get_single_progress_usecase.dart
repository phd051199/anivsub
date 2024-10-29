import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_single_progress_usecase.freezed.dart';

@injectable
class GetSingleProgressUseCase extends BaseFutureUseCase<
    GetSingleProgressUseCaseInput, GetSingleProgressUseCaseOutput> {
  const GetSingleProgressUseCase(this._repository);
  final HistoryRepository _repository;

  @protected
  @override
  Future<GetSingleProgressUseCaseOutput> buildUseCase(
    GetSingleProgressUseCaseInput input,
  ) async {
    final result = await _repository.getSingleProgress(
      chapId: input.chapId,
      seasonId: input.seasonId,
    );
    return GetSingleProgressUseCaseOutput(result: result);
  }
}

@freezed
class GetSingleProgressUseCaseInput extends BaseInput
    with _$GetSingleProgressUseCaseInput {
  const factory GetSingleProgressUseCaseInput({
    required String chapId,
    required String seasonId,
  }) = _GetSingleProgressUseCaseInput;
}

@freezed
class GetSingleProgressUseCaseOutput extends BaseOutput
    with _$GetSingleProgressUseCaseOutput {
  const factory GetSingleProgressUseCaseOutput({
    ChapterProgressEntity? result,
  }) = _GetSingleProgressUseCaseOutput;
}
