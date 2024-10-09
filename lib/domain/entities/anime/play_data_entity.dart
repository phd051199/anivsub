import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class PlayDataEntity extends BaseEntity<PlayDataDTO> {
  final List<ChapDataEntity> chaps;
  final List<int>? update;
  final String image;
  final String poster;

  const PlayDataEntity({
    required this.chaps,
    this.update,
    required this.image,
    required this.poster,
  });

  @override
  List<Object?> get props => [chaps, update, image, poster];

  @override
  PlayDataDTO toDTO() {
    return PlayDataDTO(
      chaps: chaps.map((chapter) => chapter.toDTO()).toList(),
      update: update,
      image: image,
      poster: poster,
    );
  }
}
