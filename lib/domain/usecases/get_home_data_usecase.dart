import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_home_data_usecase.freezed.dart';

@injectable
class GetHomeDataUseCase extends BaseFutureUseCase<GetHomeDataUseCaseInput,
    GetHomeDataUseCaseOutput> {
  final AnimeRepository _repository;

  const GetHomeDataUseCase(this._repository);

  @protected
  @override
  Future<GetHomeDataUseCaseOutput> buildUseCase(
    GetHomeDataUseCaseInput input,
  ) async {
    final result = await _repository.fetchHomeData();
    return GetHomeDataUseCaseOutput(
      result: result,
    );
  }
}

@freezed
class GetHomeDataUseCaseInput extends BaseInput with _$GetHomeDataUseCaseInput {
  const factory GetHomeDataUseCaseInput() = _GetHomeDataUseCaseInput;
}

@freezed
class GetHomeDataUseCaseOutput extends BaseOutput
    with _$GetHomeDataUseCaseOutput {
  const factory GetHomeDataUseCaseOutput({
    required HomeDataCategoriesEntity result,
  }) = _GetHomeDataUseCaseOutput;
}
