import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_episode_skip_usecase.freezed.dart';

@injectable
class GetEpisodeSkipUsecase extends BaseFutureUseCase<
    GetEpisodeSkipUsecaseInput, GetEpisodeSkipUsecaseOutput> {
  const GetEpisodeSkipUsecase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetEpisodeSkipUsecaseOutput> buildUseCase(
    GetEpisodeSkipUsecaseInput input,
  ) async {
    final result = await _repository.skipEpisode(
      input.id,
      cancelToken: input.cancelToken,
    );
    return GetEpisodeSkipUsecaseOutput(result: result);
  }
}

@freezed
class GetEpisodeSkipUsecaseInput extends BaseInput
    with _$GetEpisodeSkipUsecaseInput {
  const factory GetEpisodeSkipUsecaseInput({
    required String id,
    CancelToken? cancelToken,
  }) = _GetEpisodeSkipUsecaseInput;
}

@freezed
class GetEpisodeSkipUsecaseOutput extends BaseOutput
    with _$GetEpisodeSkipUsecaseOutput {
  const factory GetEpisodeSkipUsecaseOutput({
    required EpisodeSkipResponseEntity result,
  }) = _GetEpisodeSkipUsecaseOutput;
}
