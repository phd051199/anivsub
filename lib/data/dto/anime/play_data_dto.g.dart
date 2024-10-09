// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlayDataDTO _$PlayDataDTOFromJson(Map<String, dynamic> json) => PlayDataDTO(
      chaps: (json['chaps'] as List<dynamic>)
          .map((e) => ChapDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      image: json['image'] as String,
      poster: json['poster'] as String,
    );

Map<String, dynamic> _$PlayDataDTOToJson(PlayDataDTO instance) =>
    <String, dynamic>{
      'chaps': instance.chaps.map((e) => e.toJson()).toList(),
      'update': instance.update,
      'image': instance.image,
      'poster': instance.poster,
    };
