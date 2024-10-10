import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class PlayDataEntity extends BaseEntity<PlayDataDTO> {
  const PlayDataEntity({
    required this.chaps,
    this.update,
    required this.image,
    required this.poster,
  });
  final List<ChapDataEntity> chaps;
  final List<int>? update;
  final String image;
  final String poster;

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
