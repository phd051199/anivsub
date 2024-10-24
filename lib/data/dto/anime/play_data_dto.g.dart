// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'play_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayDataDTOImpl _$$PlayDataDTOImplFromJson(Map<String, dynamic> json) =>
    _$PlayDataDTOImpl(
      chaps: (json['chaps'] as List<dynamic>)
          .map((e) => ChapDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      update: (json['update'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      image: json['image'] as String,
      poster: json['poster'] as String,
    );

Map<String, dynamic> _$$PlayDataDTOImplToJson(_$PlayDataDTOImpl instance) =>
    <String, dynamic>{
      'chaps': instance.chaps,
      'update': instance.update,
      'image': instance.image,
      'poster': instance.poster,
    };
