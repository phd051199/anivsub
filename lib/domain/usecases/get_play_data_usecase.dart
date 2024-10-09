import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_play_data_usecase.freezed.dart';

@injectable
class GetPlayDataUseCase extends BaseFutureUseCase<GetPlayDataUseCaseInput,
    GetPlayDataUseCaseOutput> {
  final AnimeRepository _repository;

  const GetPlayDataUseCase(this._repository);

  @protected
  @override
  Future<GetPlayDataUseCaseOutput> buildUseCase(
    GetPlayDataUseCaseInput input,
  ) async {
    final result = await _repository.fetchPlayData(input.id);
    return GetPlayDataUseCaseOutput(result: result);
  }
}

@freezed
class GetPlayDataUseCaseInput extends BaseInput with _$GetPlayDataUseCaseInput {
  const factory GetPlayDataUseCaseInput({
    required String id,
  }) = _GetPlayDataUseCaseInput;
}

@freezed
class GetPlayDataUseCaseOutput extends BaseOutput
    with _$GetPlayDataUseCaseOutput {
  const factory GetPlayDataUseCaseOutput({required PlayDataEntity result}) =
      _GetPlayDataUseCaseOutput;
}
