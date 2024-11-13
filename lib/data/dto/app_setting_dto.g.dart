// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_setting_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppSettingDTOImpl _$$AppSettingDTOImplFromJson(Map<String, dynamic> json) =>
    _$AppSettingDTOImpl(
      themeMode: (json['themeMode'] as num).toInt(),
      color: (json['color'] as num).toInt(),
      skipIntro: json['skipIntro'] as bool? ?? false,
      host: json['host'] as String?,
    );

Map<String, dynamic> _$$AppSettingDTOImplToJson(_$AppSettingDTOImpl instance) =>
    <String, dynamic>{
      'themeMode': instance.themeMode,
      'color': instance.color,
      'skipIntro': instance.skipIntro,
      'host': instance.host,
    };
