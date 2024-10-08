import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class HomeDataCategoriesEntity extends BaseEntity {
  final List<AnimeDataEntity> topMovies;
  final List<AnimeDataEntity> sliderMovies;
  final List<AnimeDataEntity> latestUpdates;
  final List<AnimeDataEntity> preRelease;
  final List<AnimeDataEntity> hotUpdates;

  const HomeDataCategoriesEntity({
    required this.topMovies,
    required this.sliderMovies,
    required this.latestUpdates,
    required this.preRelease,
    required this.hotUpdates,
  });

  @override
  List<Object?> get props => [
        topMovies,
        sliderMovies,
        latestUpdates,
        preRelease,
        hotUpdates,
      ];

  @override
  HomeDataCategoriesDTO toDTO() => HomeDataCategoriesDTO(
        topMovies: topMovies.map((dto) => dto.toDTO()).toList(),
        sliderMovies: sliderMovies.map((dto) => dto.toDTO()).toList(),
        latestUpdates: latestUpdates.map((dto) => dto.toDTO()).toList(),
        preRelease: preRelease.map((dto) => dto.toDTO()).toList(),
        hotUpdates: hotUpdates.map((dto) => dto.toDTO()).toList(),
      );
}
