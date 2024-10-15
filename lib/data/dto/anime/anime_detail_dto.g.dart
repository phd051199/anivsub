// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'anime_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnimeDetailDTO _$AnimeDetailDTOFromJson(Map<String, dynamic> json) =>
    AnimeDetailDTO(
      name: json['name'] as String,
      othername: json['othername'] as String,
      image: json['image'] as String,
      poster: json['poster'] as String,
      pathToView: json['pathToView'] as String?,
      description: json['description'] as String,
      rate: (json['rate'] as num).toInt(),
      countRate: (json['countRate'] as num).toInt(),
      duration: json['duration'] as String,
      yearOf: (json['yearOf'] as num).toInt(),
      views: (json['views'] as num).toInt(),
      season: (json['season'] as List<dynamic>)
          .map((e) => Anchor.fromJson(e as Map<String, dynamic>))
          .toList(),
      genre: (json['genre'] as List<dynamic>)
          .map((e) => Anchor.fromJson(e as Map<String, dynamic>))
          .toList(),
      quality: json['quality'] as String,
      status: json['status'] as String,
      authors: (json['authors'] as List<dynamic>)
          .map((e) => Anchor.fromJson(e as Map<String, dynamic>))
          .toList(),
      countries: (json['countries'] as List<dynamic>)
          .map((e) => Anchor.fromJson(e as Map<String, dynamic>))
          .toList(),
      follows: (json['follows'] as num).toInt(),
      language: json['language'] as String,
      studio: json['studio'] as String,
      seasonOf: json['seasonOf'] == null
          ? null
          : Anchor.fromJson(json['seasonOf'] as Map<String, dynamic>),
      trailer: json['trailer'] as String?,
      toPut: (json['toPut'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AnimeDetailDTOToJson(AnimeDetailDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'othername': instance.othername,
      'image': instance.image,
      'poster': instance.poster,
      'pathToView': instance.pathToView,
      'description': instance.description,
      'rate': instance.rate,
      'countRate': instance.countRate,
      'duration': instance.duration,
      'yearOf': instance.yearOf,
      'views': instance.views,
      'season': instance.season.map((e) => e.toJson()).toList(),
      'genre': instance.genre.map((e) => e.toJson()).toList(),
      'quality': instance.quality,
      'status': instance.status,
      'authors': instance.authors.map((e) => e.toJson()).toList(),
      'countries': instance.countries.map((e) => e.toJson()).toList(),
      'follows': instance.follows,
      'language': instance.language,
      'studio': instance.studio,
      'seasonOf': instance.seasonOf?.toJson(),
      'trailer': instance.trailer,
      'toPut': instance.toPut.map((e) => e.toJson()).toList(),
    };
