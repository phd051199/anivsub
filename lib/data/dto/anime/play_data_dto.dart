import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'play_data_dto.freezed.dart';
part 'play_data_dto.g.dart';

@freezed
class PlayDataDTO extends BaseDTO<PlayDataEntity> with _$PlayDataDTO {
  const factory PlayDataDTO({
    required List<ChapDataDTO> chaps,
    List<int>? update,
    required String image,
    required String poster,
  }) = _PlayDataDTO;

  const PlayDataDTO._();

  factory PlayDataDTO.fromJson(Map<String, dynamic> json) =>
      _$PlayDataDTOFromJson(json);

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
}
