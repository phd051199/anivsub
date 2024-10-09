// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chap_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChapDataDTO _$ChapDataDTOFromJson(Map<String, dynamic> json) => ChapDataDTO(
      id: json['id'] as String,
      play: json['play'] as String,
      hash: json['hash'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$ChapDataDTOToJson(ChapDataDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'play': instance.play,
      'hash': instance.hash,
      'name': instance.name,
    };
