import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/resources/localization.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_categories_entity.freezed.dart';

@freezed
class HomeDataCategoriesEntity extends BaseEntity<HomeDataCategoriesDTO>
    with _$HomeDataCategoriesEntity {
  const factory HomeDataCategoriesEntity({
    required List<AnimeDataEntity> topMovies,
    required List<AnimeDataEntity> sliderMovies,
    required List<AnimeDataEntity> latestUpdates,
    required List<AnimeDataEntity> preRelease,
    required List<AnimeDataEntity> hotUpdates,
    required List<AnimeDataEntity> thisSeason,
  }) = _HomeDataCategoriesEntity;

  const HomeDataCategoriesEntity._();

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

  Map<String, String> toMapLocalized() {
    return {
      'topMovies': S.current.topMovies,
      'latestUpdates': S.current.latestUpdates,
      'preRelease': S.current.preRelease,
      'hotUpdates': S.current.hotUpdates,
      'thisSeason': S.current.thisSeason,
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
