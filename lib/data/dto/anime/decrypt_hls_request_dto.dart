import 'package:freezed_annotation/freezed_annotation.dart';

part 'decrypt_hls_request_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class DecryptHlsRequestDTO {
  DecryptHlsRequestDTO({required this.hash});

  factory DecryptHlsRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$DecryptHlsRequestDTOFromJson(json);
  String hash;
  Map<String, dynamic> toJson() => _$DecryptHlsRequestDTOToJson(this);
}
