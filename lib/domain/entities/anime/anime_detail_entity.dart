import 'package:anivsub/data/dto/anime/anime_detail_dto.dart';
import 'package:anivsub/domain/domain_exports.dart';

class AnimeDetailEntity extends BaseEntity<AnimeDetailDTO> {
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
  final List<AnimeDataEntity> toPut;

  const AnimeDetailEntity({
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

  AnimeDetailEntity copyWith({
    String? name,
    String? othername,
    String? image,
    String? poster,
    String? pathToView,
    String? description,
    int? rate,
    int? countRate,
    String? duration,
    int? yearOf,
    int? views,
    List<Map<String, String>>? season,
    List<Map<String, String>>? genre,
    String? quality,
    String? status,
    List<Map<String, String>>? authors,
    List<Map<String, String>>? countries,
    int? follows,
    String? language,
    String? studio,
    Map<String, String>? seasonOf,
    String? trailer,
    List<AnimeDataEntity>? toPut,
  }) {
    return AnimeDetailEntity(
      name: name ?? this.name,
      othername: othername ?? this.othername,
      image: image ?? this.image,
      poster: poster ?? this.poster,
      pathToView: pathToView ?? this.pathToView,
      description: description ?? this.description,
      rate: rate ?? this.rate,
      countRate: countRate ?? this.countRate,
      duration: duration ?? this.duration,
      yearOf: yearOf ?? this.yearOf,
      views: views ?? this.views,
      season: season ?? this.season,
      genre: genre ?? this.genre,
      quality: quality ?? this.quality,
      status: status ?? this.status,
      authors: authors ?? this.authors,
      countries: countries ?? this.countries,
      follows: follows ?? this.follows,
      language: language ?? this.language,
      studio: studio ?? this.studio,
      seasonOf: seasonOf ?? this.seasonOf,
      trailer: trailer ?? this.trailer,
      toPut: toPut ?? this.toPut,
    );
  }

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
  AnimeDetailDTO toDTO() {
    return AnimeDetailDTO(
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
      toPut: toPut.map((entity) => entity.toDTO()).toList(),
    );
  }
}
