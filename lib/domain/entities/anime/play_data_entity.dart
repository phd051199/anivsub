import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'play_data_entity.freezed.dart';

@freezed
class PlayDataEntity extends BaseEntity<PlayDataDTO> with _$PlayDataEntity {
  const factory PlayDataEntity({
    required List<ChapDataEntity> chaps,
    List<int>? update,
    required String image,
    required String poster,
  }) = _PlayDataEntity;

  const PlayDataEntity._();

  @override
  List<Object?> get props => [
        chaps,
        update,
        image,
        poster,
      ];

  @override
  PlayDataDTO toDTO() => PlayDataDTO(
        chaps: chaps.map((chapter) => chapter.toDTO()).toList(),
        update: update,
        image: image,
        poster: poster,
      );
}
