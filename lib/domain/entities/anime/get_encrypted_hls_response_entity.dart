import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'get_encrypted_hls_response_entity.freezed.dart';
part 'get_encrypted_hls_response_entity.g.dart';

@freezed
class Link with _$Link {
  const factory Link({
    required String file,
  }) = _Link;

  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
}

@freezed
class GetEncryptedHlsResponseEntity
    extends BaseEntity<GetEncryptedHlsResponseDTO>
    with _$GetEncryptedHlsResponseEntity {
  const factory GetEncryptedHlsResponseEntity({
    required int success,
    required String title,
    required List<Link> link,
    required String playTech,
  }) = _GetEncryptedHlsResponseEntity;

  const GetEncryptedHlsResponseEntity._();

  @override
  List<Object?> get props => [
        success,
        title,
        link,
        playTech,
      ];

  @override
  GetEncryptedHlsResponseDTO toDTO() => GetEncryptedHlsResponseDTO(
        success: success,
        title: title,
        link: link,
        playTech: playTech,
      );
}
