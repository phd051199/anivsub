// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingEntityImpl _$$AppSettingEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$AppSettingEntityImpl(
      themeMode: (json['themeMode'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      skipIntro: json['skipIntro'] as bool? ?? false,
      host: json['host'] as String?,
    );

Map<String, dynamic> _$$AppSettingEntityImplToJson(
        _$AppSettingEntityImpl instance) =>
    <String, dynamic>{
      'themeMode': instance.themeMode,
      'color': instance.color,
      'skipIntro': instance.skipIntro,
      'host': instance.host,
    };
