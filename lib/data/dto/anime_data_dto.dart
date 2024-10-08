import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/anime_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'anime_data_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class AnimeDataDTO extends BaseDTO<AnimeDataEntity> {
  final String path;
  final String image;
  final String name;
  final String chap;
  final double rate;
  final int views;
  final String quality;
  final String process;
  final int year;
  final String description;
  final String studio;
  final List<Map<String, String>> genre;
  final int? timeRelease;

  const AnimeDataDTO({
    required this.path,
    required this.image,
    required this.name,
    required this.chap,
    required this.rate,
    required this.views,
    required this.quality,
    required this.process,
    required this.year,
    required this.description,
    required this.studio,
    required this.genre,
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
  AnimeDataEntity toEntity() {
    return AnimeDataEntity(
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
  }

  factory AnimeDataDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimeDataDTOFromJson(json);

  Map<String, dynamic> toJson() => _$AnimeDataDTOToJson(this);
}
