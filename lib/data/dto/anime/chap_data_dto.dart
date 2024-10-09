import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chap_data_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class ChapDataDTO extends BaseDTO<ChapDataEntity> {

  const ChapDataDTO({
    required this.id,
    required this.play,
    required this.hash,
    required this.name,
  });

  factory ChapDataDTO.fromJson(Map<String, dynamic> json) =>
      _$ChapDataDTOFromJson(json);
  final String id;
  final String play;
  final String hash;
  final String name;

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

  Map<String, dynamic> toJson() => _$ChapDataDTOToJson(this);
}
