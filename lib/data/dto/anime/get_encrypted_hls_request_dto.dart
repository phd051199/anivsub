import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_encrypted_hls_request_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class GetEncryptedHlsRequestDTO extends BaseDTO<GetEncryptedHlsRequestEntity> {
  const GetEncryptedHlsRequestDTO({
    required this.id,
    required this.play,
    required this.link,
    required this.backuplinks,
  });

  factory GetEncryptedHlsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetEncryptedHlsRequestDTOFromJson(json);
  final String id;
  final String play;
  final String link;
  final String backuplinks;

  @override
  List<Object?> get props => [id, play, link, backuplinks];

  @override
  GetEncryptedHlsRequestEntity toEntity() {
    return GetEncryptedHlsRequestEntity(
      id: id,
      play: play,
      link: link,
      backuplinks: backuplinks,
    );
  }

  Map<String, dynamic> toJson() => _$GetEncryptedHlsRequestDTOToJson(this);
}
