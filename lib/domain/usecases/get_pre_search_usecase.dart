import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_pre_search_usecase.freezed.dart';

@injectable
class GetPreSearchUseCase extends BaseFutureUseCase<GetPreSearchUseCaseInput,
    GetPreSearchUseCaseOutput> {
  const GetPreSearchUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetPreSearchUseCaseOutput> buildUseCase(
    GetPreSearchUseCaseInput input,
  ) async {
    final result = await _repository.preSearch(keyword: input.keyword);
    return GetPreSearchUseCaseOutput(result: result);
  }
}

@freezed
class GetPreSearchUseCaseInput extends BaseInput
    with _$GetPreSearchUseCaseInput {
  const factory GetPreSearchUseCaseInput({
    required String keyword,
  }) = _GetPreSearchUseCaseInput;
}

@freezed
class GetPreSearchUseCaseOutput extends BaseOutput
    with _$GetPreSearchUseCaseOutput {
  const factory GetPreSearchUseCaseOutput({
    required List<PreSearchItemEntity> result,
  }) = _GetPreSearchUseCaseOutput;
}
