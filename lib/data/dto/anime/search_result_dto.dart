import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'search_result_dto.freezed.dart';
part 'search_result_dto.g.dart';

@freezed
class SearchResultDTO extends BaseDTO<SearchResultEntity>
    with _$SearchResultDTO {
  const factory SearchResultDTO({
    required List<AnimeDataResponseDTO> items,
    int? curPage,
    int? maxPage,
  }) = _SearchResultDTO;

  const SearchResultDTO._();

  factory SearchResultDTO.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDTOFromJson(json);

  @override
  List<Object?> get props => [
        items,
        curPage,
        maxPage,
      ];

  @override
  SearchResultEntity toEntity() {
    return SearchResultEntity(
      items: items.map((dto) => dto.toEntity()).toList(),
      curPage: curPage,
      maxPage: maxPage,
    );
  }
}
