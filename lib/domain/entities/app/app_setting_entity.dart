import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_entity.freezed.dart';
part 'app_setting_entity.g.dart';

@freezed
class AppSettingEntity extends BaseEntity<AppSettingDTO>
    with _$AppSettingEntity {
  const factory AppSettingEntity({
    required int themeMode,
    required int color,
    @Default(false) bool skipIntro,
  }) = _AppSettingEntity;

  const AppSettingEntity._();

  factory AppSettingEntity.initial() {
    return AppSettingEntity(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
      skipIntro: false,
    );
  }

  factory AppSettingEntity.fromJson(Map<String, dynamic> json) =>
      _$AppSettingEntityFromJson(json);

  ThemeMode get themeModeEnum => ThemeMode.values[themeMode];
  Color get colorEnum => Color(color);

  @override
  List<Object?> get props => [themeMode, color, skipIntro];

  @override
  AppSettingDTO toDTO() => AppSettingDTO(
        themeMode: themeMode,
        color: color,
        skipIntro: skipIntro,
      );
}