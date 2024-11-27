import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain_exports.dart';

part 'set_single_progress_usecase.freezed.dart';

@injectable
class SetSingleProgressUseCase extends BaseFutureUseCase<
    SetSingleProgressUseCaseInput, SetSingleProgressUseCaseOutput> {
  const SetSingleProgressUseCase(this._repository);
  final HistoryRepository _repository;

  @protected
  @override
  Future<SetSingleProgressUseCaseOutput> buildUseCase(
    SetSingleProgressUseCaseInput input,
  ) async {
    await _repository.setSingleProgress(input.data);
    return const SetSingleProgressUseCaseOutput();
  }
}

@freezed
class SetSingleProgressUseCaseInput extends BaseInput
    with _$SetSingleProgressUseCaseInput {
  const factory SetSingleProgressUseCaseInput({
    required SetSingleProgressEntity data,
  }) = _SetSingleProgressUseCaseInput;
}

@freezed
class SetSingleProgressUseCaseOutput extends BaseOutput
    with _$SetSingleProgressUseCaseOutput {
  const factory SetSingleProgressUseCaseOutput() =
      _SetSingleProgressUseCaseOutput;
}
