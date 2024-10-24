import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_data_categories_dto.freezed.dart';
part 'home_data_categories_dto.g.dart';

@freezed
class HomeDataCategoriesDTO extends BaseDTO<HomeDataCategoriesEntity>
    with _$HomeDataCategoriesDTO {
  const factory HomeDataCategoriesDTO({
    required List<AnimeDataResponseDTO> topMovies,
    required List<AnimeDataResponseDTO> sliderMovies,
    required List<AnimeDataResponseDTO> latestUpdates,
    required List<AnimeDataResponseDTO> preRelease,
    required List<AnimeDataResponseDTO> hotUpdates,
    required List<AnimeDataResponseDTO> thisSeason,
  }) = _HomeDataCategoriesDTO;

  const HomeDataCategoriesDTO._();

  factory HomeDataCategoriesDTO.fromJson(Map<String, dynamic> json) =>
      _$HomeDataCategoriesDTOFromJson(json);

  @override
  List<Object?> get props => [
        topMovies,
        sliderMovies,
        latestUpdates,
        preRelease,
        hotUpdates,
        thisSeason,
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
}
