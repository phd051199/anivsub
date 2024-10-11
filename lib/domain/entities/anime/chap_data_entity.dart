import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class ChapDataEntity extends BaseEntity<ChapDataDTO> {
  const ChapDataEntity({
    required this.id,
    required this.play,
    required this.hash,
    required this.name,
  });
  final String id;
  final String play;
  final String hash;
  final String name;

  ChapDataEntity copyWith({
    String? id,
    String? play,
    String? hash,
    String? name,
  }) {
    return ChapDataEntity(
      id: id ?? this.id,
      play: play ?? this.play,
      hash: hash ?? this.hash,
      name: name ?? this.name,
    );
  }

  @override
  List<Object?> get props => [
        id,
        play,
        hash,
        name,
      ];

  @override
  ChapDataDTO toDTO() {
    return ChapDataDTO(
      id: id,
      play: play,
      hash: hash,
      name: name,
    );
  }
}
