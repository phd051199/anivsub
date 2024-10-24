import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chap_data_dto.freezed.dart';
part 'chap_data_dto.g.dart';

@freezed
class ChapDataDTO extends BaseDTO<ChapDataEntity> with _$ChapDataDTO {
  const factory ChapDataDTO({
    required String id,
    required String play,
    required String hash,
    required String name,
  }) = _ChapDataDTO;

  const ChapDataDTO._();

  factory ChapDataDTO.fromJson(Map<String, dynamic> json) =>
      _$ChapDataDTOFromJson(json);

  @override
  List<Object?> get props => [
        id,
        play,
        hash,
        name,
      ];

  @override
  ChapDataEntity toEntity() {
    return ChapDataEntity(
      id: id,
      play: play,
      hash: hash,
      name: name,
    );
  }
}
