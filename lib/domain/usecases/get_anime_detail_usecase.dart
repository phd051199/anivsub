import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain_exports.dart';

part 'get_anime_detail_usecase.freezed.dart';

@injectable
class GetAnimeDetailUseCase extends BaseFutureUseCase<
    GetAnimeDetailUseCaseInput, GetAnimeDetailUseCaseOutput> {
  const GetAnimeDetailUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetAnimeDetailUseCaseOutput> buildUseCase(
    GetAnimeDetailUseCaseInput input,
  ) async {
    final result = await _repository.getAnimeDetail(
      input.id,
      cancelToken: input.cancelToken,
    );
    return GetAnimeDetailUseCaseOutput(result: result);
  }
}

@freezed
class GetAnimeDetailUseCaseInput extends BaseInput
    with _$GetAnimeDetailUseCaseInput {
  const factory GetAnimeDetailUseCaseInput({
    required String id,
    CancelToken? cancelToken,
  }) = _GetAnimeDetailUseCaseInput;
}

@freezed
class GetAnimeDetailUseCaseOutput extends BaseOutput
    with _$GetAnimeDetailUseCaseOutput {
  const factory GetAnimeDetailUseCaseOutput({
    required AnimeDetailEntity result,
  }) = _GetAnimeDetailUseCaseOutput;
}
