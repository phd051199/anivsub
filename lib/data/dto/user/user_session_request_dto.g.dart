// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSessionRequestDTOImpl _$$UserSessionRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSessionRequestDTOImpl(
      username: json['username'] as String,
      password: json['password'] as String,
      expiresInMins: (json['expiresInMins'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserSessionRequestDTOImplToJson(
        _$UserSessionRequestDTOImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
      'expiresInMins': instance.expiresInMins,
    };
