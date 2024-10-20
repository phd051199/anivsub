import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class AnimeDetailEntity extends BaseEntity<AnimeDetailDTO> {
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
    this.schedule,
  });
  final String name;
  final String othername;
  final String image;
  final String poster;
  final String? pathToView;
  final String description;
  final double rate;
  final int countRate;
  final String duration;
  final int yearOf;
  final int views;
  final List<Anchor> season;
  final List<Anchor> genre;
  final String quality;
  final String status;
  final List<Anchor> authors;
  final List<Anchor> countries;
  final int follows;
  final String language;
  final String studio;
  final Anchor? seasonOf;
  final String? trailer;
  final List<AnimeDataEntity> toPut;
  final String? schedule;

  AnimeDetailEntity copyWith({
    String? name,
    String? othername,
    String? image,
    String? poster,
    String? pathToView,
    String? description,
    double? rate,
    int? countRate,
    String? duration,
    int? yearOf,
    int? views,
    List<Anchor>? season,
    List<Anchor>? genre,
    String? quality,
    String? status,
    List<Anchor>? authors,
    List<Anchor>? countries,
    int? follows,
    String? language,
    String? studio,
    Anchor? seasonOf,
    String? trailer,
    List<AnimeDataEntity>? toPut,
    String? schedule,
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
      schedule: schedule ?? this.schedule,
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
        schedule,
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
      schedule: schedule,
    );
  }

  static AnimeDetailEntity mockup() => AnimeDetailEntity(
        name: 'Anime Title Anime Title Anime Title Anime Title',
        othername: 'Other Name',
        image: 'https://avatars.githubusercontent.com/u/30114834',
        poster: 'https://avatars.githubusercontent.com/u/30114834',
        description: 'Sample anime description',
        rate: 5.0,
        countRate: 1000,
        duration: '24 min',
        yearOf: 2024,
        views: 100000,
        season: [Anchor(name: 'Season 1', path: '/season1')],
        genre: [
          Anchor(name: 'Genre1 Genre1 Genre1', path: '/genre1'),
          Anchor(name: 'Genre2 Genre2 Genre2', path: '/genre2'),
          Anchor(name: 'Genre3 Genre3 Genre3', path: '/genre3'),
        ],
        quality: 'HD',
        status: 'Ongoing',
        authors: [Anchor(name: 'Author 1', path: '/author1')],
        countries: [Anchor(name: 'Country', path: '/country')],
        follows: 50000,
        language: 'Japanese',
        studio: 'Sample Studio',
        seasonOf: Anchor(name: 'Main Series', path: '/main-series'),
        trailer: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        toPut: [AnimeDataEntity.mockup()],
        schedule: 'Sample Schedule Sample Schedule Sample Schedule',
      );
}
