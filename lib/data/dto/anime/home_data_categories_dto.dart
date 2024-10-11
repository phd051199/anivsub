import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/anime/home_data_categories_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_categories_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class HomeDataCategoriesDTO extends BaseDTO<HomeDataCategoriesEntity> {
  const HomeDataCategoriesDTO({
    required this.topMovies,
    required this.sliderMovies,
    required this.latestUpdates,
    required this.preRelease,
    required this.hotUpdates,
    required this.thisSeason,
  });

  factory HomeDataCategoriesDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDataCategoriesDTOFromJson(json);
  final List<AnimeDataResponseDTO> topMovies;
  final List<AnimeDataResponseDTO> sliderMovies;
  final List<AnimeDataResponseDTO> latestUpdates;
  final List<AnimeDataResponseDTO> preRelease;
  final List<AnimeDataResponseDTO> hotUpdates;
  final List<AnimeDataResponseDTO> thisSeason;

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
      thisSeason: thisSeason.map((dto) => dto.toEntity()).toList(),
    );
  }

  Map<String, dynamic> toJson() => _$HomeDataCategoriesDTOToJson(this);
}
