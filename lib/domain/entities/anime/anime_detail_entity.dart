import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_detail_entity.freezed.dart';

@freezed
class AnimeDetailEntity extends BaseEntity<AnimeDetailDTO>
    with _$AnimeDetailEntity {
  const factory AnimeDetailEntity({
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
    required List<AnimeDataEntity> toPut,
    String? schedule,
  }) = _AnimeDetailEntity;

  const AnimeDetailEntity._();

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
  AnimeDetailDTO toDTO() => AnimeDetailDTO(
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
        season: [const Anchor(name: 'Season 1', path: '/season1')],
        genre: [
          const Anchor(name: 'Genre1 Genre1 Genre1', path: '/genre1'),
          const Anchor(name: 'Genre2 Genre2 Genre2', path: '/genre2'),
          const Anchor(name: 'Genre3 Genre3 Genre3', path: '/genre3'),
        ],
        quality: 'HD',
        status: 'Ongoing',
        authors: [const Anchor(name: 'Author 1', path: '/author1')],
        countries: [const Anchor(name: 'Country', path: '/country')],
        follows: 50000,
        language: 'Japanese',
        studio: 'Sample Studio',
        seasonOf: const Anchor(name: 'Main Series', path: '/main-series'),
        trailer: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        toPut: [AnimeDataEntity.mockup()],
        schedule: 'Sample Schedule Sample Schedule Sample Schedule',
      );
}
