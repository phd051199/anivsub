import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_encrypted_hls_request_dto.freezed.dart';
part 'get_encrypted_hls_request_dto.g.dart';

@freezed
class GetEncryptedHlsRequestDTO extends BaseDTO<GetEncryptedHlsRequestEntity>
    with _$GetEncryptedHlsRequestDTO {
  const factory GetEncryptedHlsRequestDTO({
    required String id,
    required String play,
    required String link,
    required String backuplinks,
  }) = _GetEncryptedHlsRequestDTO;

  const GetEncryptedHlsRequestDTO._();

  factory GetEncryptedHlsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$GetEncryptedHlsRequestDTOFromJson(json);

  @override
  List<Object?> get props => [
        id,
        play,
        link,
        backuplinks,
      ];

  @override
  GetEncryptedHlsRequestEntity toEntity() {
    return GetEncryptedHlsRequestEntity(
      id: id,
      play: play,
      link: link,
      backuplinks: backuplinks,
    );
  }
}
