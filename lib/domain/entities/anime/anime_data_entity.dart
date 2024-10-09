import 'package:anivsub/data/data_exports.dart';

import '../base_entity.dart';

class AnimeDataEntity extends BaseEntity {
  final String path;
  final String image;
  final String name;
  final String chap;
  final double? rate;
  final int? views;
  final String quality;
  final String? process;
  final int year;
  final String description;
  final String? studio;
  final List<Map<String, String>>? genre;
  final int? timeRelease;

  const AnimeDataEntity({
    required this.path,
    required this.image,
    required this.name,
    required this.chap,
    this.rate,
    this.views,
    required this.quality,
    this.process,
    required this.year,
    required this.description,
    this.studio,
    this.genre,
    this.timeRelease,
  });

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

  AnimeDataEntity copyWith({
    String? path,
    String? image,
    String? name,
    String? chap,
    double? rate,
    int? views,
    String? quality,
    String? process,
    int? year,
    String? description,
    String? studio,
    List<Map<String, String>>? genre,
    int? timeRelease,
  }) {
    return AnimeDataEntity(
      path: path ?? this.path,
      image: image ?? this.image,
      name: name ?? this.name,
      chap: chap ?? this.chap,
      rate: rate ?? this.rate,
      views: views ?? this.views,
      quality: quality ?? this.quality,
      process: process ?? this.process,
      year: year ?? this.year,
      description: description ?? this.description,
      studio: studio ?? this.studio,
      genre: genre ?? this.genre,
      timeRelease: timeRelease ?? this.timeRelease,
    );
  }
}
