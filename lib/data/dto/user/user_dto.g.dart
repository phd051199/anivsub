// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserDTOImpl _$$UserDTOImplFromJson(Map<String, dynamic> json) =>
    _$UserDTOImpl(
      id: json['id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      age: (json['age'] as num?)?.toInt(),
      gender: json['gender'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      username: json['username'] as String?,
      password: json['password'] as String?,
      birthDate: json['birthDate'] as String?,
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$UserDTOImplToJson(_$UserDTOImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'age': instance.age,
      'gender': instance.gender,
      'email': instance.email,
      'phone': instance.phone,
      'username': instance.username,
      'password': instance.password,
      'birthDate': instance.birthDate,
      'image': instance.image,
    };
