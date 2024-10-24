import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chap_data_entity.freezed.dart';

@freezed
class ChapDataEntity extends BaseEntity<ChapDataDTO> with _$ChapDataEntity {
  const factory ChapDataEntity({
    required String id,
    required String play,
    required String hash,
    required String name,
  }) = _ChapDataEntity;

  const ChapDataEntity._();

  @override
  List<Object?> get props => [
        id,
        play,
        hash,
        name,
      ];

  @override
  ChapDataDTO toDTO() => ChapDataDTO(
        id: id,
        play: play,
        hash: hash,
        name: name,
      );

  static ChapDataEntity mockup() => const ChapDataEntity(
        id: 'id',
        play: 'play',
        hash: 'hash',
        name: 'name',
      );
}
