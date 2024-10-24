// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsDTOImpl _$$AppSettingsDTOImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingsDTOImpl(
      themeMode: (json['themeMode'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      skipIntro: json['skipIntro'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppSettingsDTOImplToJson(
        _$AppSettingsDTOImpl instance) =>
    <String, dynamic>{
      'themeMode': instance.themeMode,
      'color': instance.color,
      'skipIntro': instance.skipIntro,
    };
