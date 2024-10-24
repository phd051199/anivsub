// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_encrypted_hls_request_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEncryptedHlsRequestEntityImpl _$$GetEncryptedHlsRequestEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEncryptedHlsRequestEntityImpl(
      id: json['id'] as String,
      play: json['play'] as String,
      link: json['link'] as String,
      backuplinks: json['backuplinks'] as String? ?? '1',
    );

Map<String, dynamic> _$$GetEncryptedHlsRequestEntityImplToJson(
        _$GetEncryptedHlsRequestEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'play': instance.play,
      'link': instance.link,
      'backuplinks': instance.backuplinks,
    };
