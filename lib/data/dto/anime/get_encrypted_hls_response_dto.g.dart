// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_encrypted_hls_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetEncryptedHlsResponseDTO _$GetEncryptedHlsResponseDTOFromJson(
        Map<String, dynamic> json) =>
    GetEncryptedHlsResponseDTO(
      success: (json['success'] as num).toInt(),
      title: json['title'] as String,
      link: (json['link'] as List<dynamic>)
          .map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      playTech: json['playTech'] as String,
    );

Map<String, dynamic> _$GetEncryptedHlsResponseDTOToJson(
        GetEncryptedHlsResponseDTO instance) =>
    <String, dynamic>{
      'success': instance.success,
      'title': instance.title,
      'link': instance.link.map((e) => e.toJson()).toList(),
      'playTech': instance.playTech,
    };
