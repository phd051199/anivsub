// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultDTO _$SearchResultDTOFromJson(Map<String, dynamic> json) =>
    SearchResultDTO(
      items: (json['items'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      curPage: (json['curPage'] as num?)?.toInt(),
      maxPage: (json['maxPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$SearchResultDTOToJson(SearchResultDTO instance) =>
    <String, dynamic>{
      'items': instance.items.map((e) => e.toJson()).toList(),
      'curPage': instance.curPage,
      'maxPage': instance.maxPage,
    };
