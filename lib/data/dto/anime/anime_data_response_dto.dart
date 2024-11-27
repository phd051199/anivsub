import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'anime_data_response_dto.freezed.dart';
part 'anime_data_response_dto.g.dart';

@freezed
class AnimeDataResponseDTO extends BaseDTO<AnimeDataEntity>
    with _$AnimeDataResponseDTO {
  const factory AnimeDataResponseDTO({
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
  }) = _AnimeDataResponseDTO;

  const AnimeDataResponseDTO._();

  factory AnimeDataResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$AnimeDataResponseDTOFromJson(json);

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
}
