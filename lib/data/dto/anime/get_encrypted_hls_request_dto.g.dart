// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_encrypted_hls_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEncryptedHlsRequestDTO _$GetEncryptedHlsRequestDTOFromJson(
        Map<String, dynamic> json) =>
    GetEncryptedHlsRequestDTO(
      id: json['id'] as String,
      play: json['play'] as String,
      link: json['link'] as String,
      backuplinks: json['backuplinks'] as String,
    );

Map<String, dynamic> _$GetEncryptedHlsRequestDTOToJson(
        GetEncryptedHlsRequestDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'play': instance.play,
      'link': instance.link,
      'backuplinks': instance.backuplinks,
    };
