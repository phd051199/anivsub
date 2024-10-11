import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class SearchResultEntity extends BaseEntity<SearchResultDTO> {
  const SearchResultEntity({
    required this.items,
    this.curPage,
    this.maxPage,
  });
  final List<AnimeDataEntity> items;
  final int? curPage;
  final int? maxPage;

  @override
  List<Object?> get props => [items, curPage, maxPage];

  SearchResultEntity copyWith({
    List<AnimeDataEntity>? items,
    int? curPage,
    int? maxPage,
  }) {
    return SearchResultEntity(
      items: items ?? this.items,
      curPage: curPage ?? this.curPage,
      maxPage: maxPage ?? this.maxPage,
    );
  }

  @override
  SearchResultDTO toDTO() {
    return SearchResultDTO(
      items: items.map((dto) => dto.toDTO()).toList(),
      curPage: curPage,
      maxPage: maxPage,
    );
  }
}
