// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HomeDataCategoriesDTOImpl _$$HomeDataCategoriesDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$HomeDataCategoriesDTOImpl(
      topMovies: (json['topMovies'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliderMovies: (json['sliderMovies'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestUpdates: (json['latestUpdates'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      preRelease: (json['preRelease'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotUpdates: (json['hotUpdates'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      thisSeason: (json['thisSeason'] as List<dynamic>)
          .map((e) => AnimeDataResponseDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HomeDataCategoriesDTOImplToJson(
        _$HomeDataCategoriesDTOImpl instance) =>
    <String, dynamic>{
      'topMovies': instance.topMovies,
      'sliderMovies': instance.sliderMovies,
      'latestUpdates': instance.latestUpdates,
      'preRelease': instance.preRelease,
      'hotUpdates': instance.hotUpdates,
      'thisSeason': instance.thisSeason,
    };
