import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_hls_request_dto.freezed.dart';
part 'decrypt_hls_request_dto.g.dart';

@freezed
class DecryptHlsRequestDTO with _$DecryptHlsRequestDTO {
  const factory DecryptHlsRequestDTO({
    required String hash,
  }) = _DecryptHlsRequestDTO;

  const DecryptHlsRequestDTO._();

  factory DecryptHlsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$DecryptHlsRequestDTOFromJson(json);
}
