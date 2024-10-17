import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_list_episode_usecase.freezed.dart';

@injectable
class GetListEpisodeUseCase extends BaseFutureUseCase<
    GetListEpisodeUseCaseInput, GetListEpisodeUseCaseOutput> {
  const GetListEpisodeUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<GetListEpisodeUseCaseOutput> buildUseCase(
    GetListEpisodeUseCaseInput input,
  ) async {
    final result = await _repository.listEpisodes(
      input.animeName,
      cancelToken: input.cancelToken,
    );
    return GetListEpisodeUseCaseOutput(result: result);
  }
}

@freezed
class GetListEpisodeUseCaseInput extends BaseInput
    with _$GetListEpisodeUseCaseInput {
  const factory GetListEpisodeUseCaseInput({
    required List<String> animeName,
    CancelToken? cancelToken,
  }) = _GetListEpisodeUseCaseInput;
}

@freezed
class GetListEpisodeUseCaseOutput extends BaseOutput
    with _$GetListEpisodeUseCaseOutput {
  const factory GetListEpisodeUseCaseOutput({
    required ListEpisodeResponseEntity result,
  }) = _GetListEpisodeUseCaseOutput;
}
