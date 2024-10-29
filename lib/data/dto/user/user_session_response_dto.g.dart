// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_session_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserSessionResponseDTOImpl _$$UserSessionResponseDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$UserSessionResponseDTOImpl(
      accessToken: json['accessToken'] as String?,
      refreshToken: json['refreshToken'] as String?,
      id: json['id'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      gender: json['gender'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserSessionResponseDTOImplToJson(
        _$UserSessionResponseDTOImpl instance) =>
    <String, dynamic>{
      'accessToken': instance.accessToken,
      'refreshToken': instance.refreshToken,
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'gender': instance.gender,
      'image': instance.image,
    };
