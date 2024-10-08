import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/home_data_categories_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_categories_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class HomeDataCategoriesDTO extends BaseDTO<HomeDataCategoriesEntity> {
  final List<AnimeDataDTO> topMovies;
  final List<AnimeDataDTO> sliderMovies;
  final List<AnimeDataDTO> latestUpdates;
  final List<AnimeDataDTO> preRelease;
  final List<AnimeDataDTO> hotUpdates;

  const HomeDataCategoriesDTO({
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
  HomeDataCategoriesEntity toEntity() {
    return HomeDataCategoriesEntity(
      topMovies: topMovies.map((dto) => dto.toEntity()).toList(),
      sliderMovies: sliderMovies.map((dto) => dto.toEntity()).toList(),
      latestUpdates: latestUpdates.map((dto) => dto.toEntity()).toList(),
      preRelease: preRelease.map((dto) => dto.toEntity()).toList(),
      hotUpdates: hotUpdates.map((dto) => dto.toEntity()).toList(),
    );
  }

  factory HomeDataCategoriesDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDataCategoriesDTOFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDataCategoriesDTOToJson(this);
}
