import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_anime_usecase.freezed.dart';

@injectable
class SearchAnimeUseCase extends BaseFutureUseCase<SearchAnimeUseCaseInput,
    SearchAnimeUseCaseOutput> {
  const SearchAnimeUseCase(this._repository);
  final AnimeRepository _repository;

  @protected
  @override
  Future<SearchAnimeUseCaseOutput> buildUseCase(
    SearchAnimeUseCaseInput input,
  ) async {
    final result = await _repository.search(
      keyword: input.keyword,
      page: input.page,
    );
    return SearchAnimeUseCaseOutput(result: result);
  }
}

@freezed
class SearchAnimeUseCaseInput extends BaseInput with _$SearchAnimeUseCaseInput {
  const factory SearchAnimeUseCaseInput({
    required String keyword,
    int? page,
  }) = _SearchAnimeUseCaseInput;
}

@freezed
class SearchAnimeUseCaseOutput extends BaseOutput
    with _$SearchAnimeUseCaseOutput {
  const factory SearchAnimeUseCaseOutput({
    required SearchResultEntity result,
  }) = _SearchAnimeUseCaseOutput;
}
