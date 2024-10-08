// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_data_categories_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeDataCategoriesDTO _$HomeDataCategoriesDTOFromJson(
        Map<String, dynamic> json) =>
    HomeDataCategoriesDTO(
      topMovies: (json['topMovies'] as List<dynamic>)
          .map((e) => AnimeDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      sliderMovies: (json['sliderMovies'] as List<dynamic>)
          .map((e) => AnimeDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      latestUpdates: (json['latestUpdates'] as List<dynamic>)
          .map((e) => AnimeDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      preRelease: (json['preRelease'] as List<dynamic>)
          .map((e) => AnimeDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
      hotUpdates: (json['hotUpdates'] as List<dynamic>)
          .map((e) => AnimeDataDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HomeDataCategoriesDTOToJson(
        HomeDataCategoriesDTO instance) =>
    <String, dynamic>{
      'topMovies': instance.topMovies.map((e) => e.toJson()).toList(),
      'sliderMovies': instance.sliderMovies.map((e) => e.toJson()).toList(),
      'latestUpdates': instance.latestUpdates.map((e) => e.toJson()).toList(),
      'preRelease': instance.preRelease.map((e) => e.toJson()).toList(),
      'hotUpdates': instance.hotUpdates.map((e) => e.toJson()).toList(),
    };
