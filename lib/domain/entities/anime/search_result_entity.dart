import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'search_result_entity.freezed.dart';

@freezed
class SearchResultEntity extends BaseEntity<SearchResultDTO>
    with _$SearchResultEntity {
  const factory SearchResultEntity({
    required List<AnimeDataEntity> items,
    int? curPage,
    int? maxPage,
  }) = _SearchResultEntity;

  const SearchResultEntity._();

  @override
  List<Object?> get props => [
        items,
        curPage,
        maxPage,
      ];

  @override
  SearchResultDTO toDTO() => SearchResultDTO(
        items: items.map((dto) => dto.toDTO()).toList(),
        curPage: curPage,
        maxPage: maxPage,
      );
}
