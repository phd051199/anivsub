import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class SearchResultDTO extends BaseDTO<SearchResultEntity> {
  const SearchResultDTO({
    required this.items,
    this.curPage,
    this.maxPage,
  });
  final List<AnimeDataResponseDTO> items;
  final int? curPage;
  final int? maxPage;

  @override
  List<Object?> get props => [items, curPage, maxPage];

  @override
  SearchResultEntity toEntity() {
    return SearchResultEntity(
      items: items.map((dto) => dto.toEntity()).toList(),
      curPage: curPage,
      maxPage: maxPage,
    );
  }
}
