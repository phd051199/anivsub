import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'anime_detail_dto.freezed.dart';
part 'anime_detail_dto.g.dart';

@freezed
class AnimeDetailDTO extends BaseDTO<AnimeDetailEntity> with _$AnimeDetailDTO {
  const factory AnimeDetailDTO({
    required String name,
    required String othername,
    required String image,
    required String poster,
    String? pathToView,
    required String description,
    required double rate,
    required int countRate,
    required String duration,
    required int yearOf,
    required int views,
    required List<Anchor> season,
    required List<Anchor> genre,
    required String quality,
    required String status,
    required List<Anchor> authors,
    required List<Anchor> countries,
    required int follows,
    required String language,
    required String studio,
    Anchor? seasonOf,
    String? trailer,
    required List<AnimeDataResponseDTO> toPut,
    String? schedule,
  }) = _AnimeDetailDTO;

  const AnimeDetailDTO._();

  factory AnimeDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailDTOFromJson(json);

  @override
  List<Object?> get props => [
        name,
        othername,
        image,
        poster,
        pathToView,
        description,
        rate,
        countRate,
        duration,
        yearOf,
        views,
        season,
        genre,
        quality,
        status,
        authors,
        countries,
        follows,
        language,
        studio,
        seasonOf,
        trailer,
        toPut,
        schedule,
      ];

  @override
  AnimeDetailEntity toEntity() {
    return AnimeDetailEntity(
      name: name,
      othername: othername,
      image: image,
      poster: poster,
      pathToView: pathToView,
      description: description,
      rate: rate,
      countRate: countRate,
      duration: duration,
      yearOf: yearOf,
      views: views,
      season: season,
      genre: genre,
      quality: quality,
      status: status,
      authors: authors,
      countries: countries,
      follows: follows,
      language: language,
      studio: studio,
      seasonOf: seasonOf,
      trailer: trailer,
      toPut: toPut.map((dto) => dto.toEntity()).toList(),
      schedule: schedule,
    );
  }
}
