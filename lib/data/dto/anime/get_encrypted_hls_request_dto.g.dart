// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_encrypted_hls_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEncryptedHlsRequestDTOImpl _$$GetEncryptedHlsRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEncryptedHlsRequestDTOImpl(
      id: json['id'] as String,
      play: json['play'] as String,
      link: json['link'] as String,
      backuplinks: json['backuplinks'] as String,
    );

Map<String, dynamic> _$$GetEncryptedHlsRequestDTOImplToJson(
        _$GetEncryptedHlsRequestDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'play': instance.play,
      'link': instance.link,
      'backuplinks': instance.backuplinks,
    };
