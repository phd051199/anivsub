import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/anime/anime_detail_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_detail_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class AnimeDetailDTO extends BaseDTO<AnimeDetailEntity> {
  final String name;
  final String othername;
  final String image;
  final String poster;
  final String? pathToView;
  final String description;
  final int rate;
  final int countRate;
  final String duration;
  final int yearOf;
  final int views;
  final List<Map<String, String>> season;
  final List<Map<String, String>> genre;
  final String quality;
  final String status;
  final List<Map<String, String>> authors;
  final List<Map<String, String>> countries;
  final int follows;
  final String language;
  final String studio;
  final Map<String, String>? seasonOf;
  final String? trailer;
  final List<AnimeDataResponseDTO> toPut;

  const AnimeDetailDTO({
    required this.name,
    required this.othername,
    required this.image,
    required this.poster,
    this.pathToView,
    required this.description,
    required this.rate,
    required this.countRate,
    required this.duration,
    required this.yearOf,
    required this.views,
    required this.season,
    required this.genre,
    required this.quality,
    required this.status,
    required this.authors,
    required this.countries,
    required this.follows,
    required this.language,
    required this.studio,
    this.seasonOf,
    this.trailer,
    required this.toPut,
  });

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
    );
  }

  factory AnimeDetailDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimeDetailDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDetailDTOToJson(this);
}
