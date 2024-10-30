// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingsEntityImpl _$$AppSettingsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingsEntityImpl(
      themeMode: (json['themeMode'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      skipIntro: json['skipIntro'] as bool? ?? false,
    );

Map<String, dynamic> _$$AppSettingsEntityImplToJson(
        _$AppSettingsEntityImpl instance) =>
    <String, dynamic>{
      'themeMode': instance.themeMode,
      'color': instance.color,
      'skipIntro': instance.skipIntro,
    };
