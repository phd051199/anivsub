import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'get_encrypted_hls_response_dto.freezed.dart';
part 'get_encrypted_hls_response_dto.g.dart';

@freezed
class GetEncryptedHlsResponseDTO extends BaseDTO<GetEncryptedHlsResponseEntity>
    with _$GetEncryptedHlsResponseDTO {
  const factory GetEncryptedHlsResponseDTO({
    required int success,
    required String title,
    required List<Link> link,
    required String playTech,
  }) = _GetEncryptedHlsResponseDTO;

  const GetEncryptedHlsResponseDTO._();

  factory GetEncryptedHlsResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetEncryptedHlsResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        success,
        title,
        link,
        playTech,
      ];

  @override
  GetEncryptedHlsResponseEntity toEntity() {
    return GetEncryptedHlsResponseEntity(
      success: success,
      title: title,
      link: link,
      playTech: playTech,
    );
  }
}
