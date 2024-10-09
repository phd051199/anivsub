import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_data_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class PlayDataDTO extends BaseDTO<PlayDataEntity> {
  final List<ChapDataDTO> chaps;
  final List<int>? update;
  final String image;
  final String poster;

  const PlayDataDTO({
    required this.chaps,
    this.update,
    required this.image,
    required this.poster,
  });

  @override
  List<Object?> get props => [chaps, update, image, poster];

  @override
  PlayDataEntity toEntity() {
    return PlayDataEntity(
      chaps: chaps.map((chapter) => chapter.toEntity()).toList(),
      update: update,
      image: image,
      poster: poster,
    );
  }

  factory PlayDataDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayDataDTOFromJson(json);

  Map<String, dynamic> toJson() => _$PlayDataDTOToJson(this);
}
