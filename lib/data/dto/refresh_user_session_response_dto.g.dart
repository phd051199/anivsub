// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'refresh_user_session_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RefreshUserSessionResponseDTOImpl
    _$$RefreshUserSessionResponseDTOImplFromJson(Map<String, dynamic> json) =>
        _$RefreshUserSessionResponseDTOImpl(
          accessToken: json['accessToken'] as String?,
          refreshToken: json['refreshToken'] as String?,
        );

Map<String, dynamic> _$$RefreshUserSessionResponseDTOImplToJson(
        _$RefreshUserSessionResponseDTOImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
    };
