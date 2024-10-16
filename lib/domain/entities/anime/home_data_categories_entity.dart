import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';

class HomeDataCategoriesEntity extends BaseEntity {
  const HomeDataCategoriesEntity({
    required this.topMovies,
    required this.sliderMovies,
    required this.latestUpdates,
    required this.preRelease,
    required this.hotUpdates,
    required this.thisSeason,
  });
  final List<AnimeDataEntity> topMovies;
  final List<AnimeDataEntity> sliderMovies;
  final List<AnimeDataEntity> latestUpdates;
  final List<AnimeDataEntity> preRelease;
  final List<AnimeDataEntity> hotUpdates;
  final List<AnimeDataEntity> thisSeason;

  @override
  List<Object?> get props => [
        topMovies,
        sliderMovies,
        latestUpdates,
        preRelease,
        hotUpdates,
        thisSeason,
      ];

  Map<String, dynamic> toMap() {
    return {
      'hotUpdates': hotUpdates,
      'thisSeason': thisSeason,
      'topMovies': topMovies,
      'latestUpdates': latestUpdates,
      'preRelease': preRelease,
    };
  }

  Map<String, String> toMapLocalized(BuildContext context) {
    return {
      'topMovies': context.l10n.topMovies,
      'latestUpdates': context.l10n.latestUpdates,
      'preRelease': context.l10n.preRelease,
      'hotUpdates': context.l10n.hotUpdates,
      'thisSeason': context.l10n.thisSeason,
    };
  }

  @override
  HomeDataCategoriesDTO toDTO() => HomeDataCategoriesDTO(
        topMovies: topMovies.map((dto) => dto.toDTO()).toList(),
        sliderMovies: sliderMovies.map((dto) => dto.toDTO()).toList(),
        latestUpdates: latestUpdates.map((dto) => dto.toDTO()).toList(),
        preRelease: preRelease.map((dto) => dto.toDTO()).toList(),
        hotUpdates: hotUpdates.map((dto) => dto.toDTO()).toList(),
        thisSeason: thisSeason.map((dto) => dto.toDTO()).toList(),
      );
}
