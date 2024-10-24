import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_data_entity.freezed.dart';

@freezed
class AnimeDataEntity extends BaseEntity<AnimeDataResponseDTO>
    with _$AnimeDataEntity {
  const factory AnimeDataEntity({
    required String path,
    required String image,
    required String name,
    required String chap,
    double? rate,
    int? views,
    required String quality,
    String? process,
    required int year,
    required String description,
    String? studio,
    List<Map<String, String>>? genre,
    int? timeRelease,
  }) = _AnimeDataEntity;

  const AnimeDataEntity._();

  @override
  List<Object?> get props => [
        path,
        image,
        name,
        chap,
        rate,
        views,
        quality,
        process,
        year,
        description,
        studio,
        genre,
        timeRelease,
      ];

  @override
  AnimeDataResponseDTO toDTO() => AnimeDataResponseDTO(
        path: path,
        image: image,
        name: name,
        chap: chap,
        rate: rate,
        views: views,
        quality: quality,
        process: process,
        year: year,
        description: description,
        studio: studio,
        genre: genre,
        timeRelease: timeRelease,
      );

  static AnimeDataEntity mockup() => const AnimeDataEntity(
        path: 'path',
        image: 'https://avatars.githubusercontent.com/u/30114834',
        name: 'namenamenam',
        chap: 'chap',
        quality: 'quality',
        year: 2024,
        description: 'description\ndescription description',
        studio: 'studio',
        genre: [
          {'name': 'genre genre genre'},
        ],
        timeRelease: 120,
        views: 100000,
        rate: 0.0,
      );
}
