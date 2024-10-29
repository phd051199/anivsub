// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_user_session_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshUserSessionRequestDTOImpl _$$RefreshUserSessionRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$RefreshUserSessionRequestDTOImpl(
      refreshToken: json['refreshToken'] as String,
      expiresInMins: (json['expiresInMins'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$RefreshUserSessionRequestDTOImplToJson(
        _$RefreshUserSessionRequestDTOImpl instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'expiresInMins': instance.expiresInMins,
    };
