import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain_exports.dart';

part 'get_play_data_usecase.freezed.dart';

@injectable
class GetPlayDataUseCase extends BaseFutureUseCase<GetPlayDataUseCaseInput,
    GetPlayDataUseCaseOutput> {
  const GetPlayDataUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetPlayDataUseCaseOutput> buildUseCase(
    GetPlayDataUseCaseInput input,
  ) async {
    final result = await _repository.getPlayData(
      input.id,
      cancelToken: input.cancelToken,
    );
    return GetPlayDataUseCaseOutput(result: result);
  }
}

@freezed
class GetPlayDataUseCaseInput extends BaseInput with _$GetPlayDataUseCaseInput {
  const factory GetPlayDataUseCaseInput({
    required String id,
    CancelToken? cancelToken,
  }) = _GetPlayDataUseCaseInput;
}

@freezed
class GetPlayDataUseCaseOutput extends BaseOutput
    with _$GetPlayDataUseCaseOutput {
  const factory GetPlayDataUseCaseOutput({required PlayDataEntity result}) =
      _GetPlayDataUseCaseOutput;
}
