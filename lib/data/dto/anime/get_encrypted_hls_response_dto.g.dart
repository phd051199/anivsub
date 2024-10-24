// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_encrypted_hls_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetEncryptedHlsResponseDTOImpl _$$GetEncryptedHlsResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$GetEncryptedHlsResponseDTOImpl(
      success: (json['success'] as num).toInt(),
      title: json['title'] as String,
      link: (json['link'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      playTech: json['playTech'] as String,
    );

Map<String, dynamic> _$$GetEncryptedHlsResponseDTOImplToJson(
        _$GetEncryptedHlsResponseDTOImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'title': instance.title,
      'link': instance.link,
      'playTech': instance.playTech,
    };
