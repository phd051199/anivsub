import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_encrypted_hls_response_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class GetEncryptedHlsResponseDTO
    extends BaseDTO<GetEncryptedHlsResponseEntity> {
  final int success;
  final String title;
  final List<Link> link;
  final String playTech;

  const GetEncryptedHlsResponseDTO({
    required this.success,
    required this.title,
    required this.link,
    required this.playTech,
  });

  @override
  List<Object?> get props => [success, title, link, playTech];

  @override
  GetEncryptedHlsResponseEntity toEntity() {
    return GetEncryptedHlsResponseEntity(
      success: success,
      title: title,
      link: link,
      playTech: playTech,
    );
  }

  factory GetEncryptedHlsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetEncryptedHlsResponseDTOFromJson(json);

  Map<String, dynamic> toJson() => _$GetEncryptedHlsResponseDTOToJson(this);
}
