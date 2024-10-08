// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDataDTO _$AnimeDataDTOFromJson(Map<String, dynamic> json) => AnimeDataDTO(
      path: json['path'] as String,
      image: json['image'] as String,
      name: json['name'] as String,
      chap: json['chap'] as String,
      rate: (json['rate'] as num).toDouble(),
      views: (json['views'] as num).toInt(),
      quality: json['quality'] as String,
      process: json['process'] as String,
      year: (json['year'] as num).toInt(),
      description: json['description'] as String,
      studio: json['studio'] as String,
      genre: (json['genre'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      timeRelease: (json['timeRelease'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AnimeDataDTOToJson(AnimeDataDTO instance) =>
    <String, dynamic>{
      'path': instance.path,
      'image': instance.image,
      'name': instance.name,
      'chap': instance.chap,
      'rate': instance.rate,
      'views': instance.views,
      'quality': instance.quality,
      'process': instance.process,
      'year': instance.year,
      'description': instance.description,
      'studio': instance.studio,
      'genre': instance.genre,
      'timeRelease': instance.timeRelease,
    };
