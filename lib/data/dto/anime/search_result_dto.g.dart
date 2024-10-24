// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultDTOImpl _$$SearchResultDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$SearchResultDTOImpl(
      items: (json['items'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      curPage: (json['curPage'] as num?)?.toInt(),
      maxPage: (json['maxPage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$SearchResultDTOImplToJson(
        _$SearchResultDTOImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
      'curPage': instance.curPage,
      'maxPage': instance.maxPage,
    };
