import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';
part 'app_settings_entity.g.dart';

@freezed
class AppSettingsEntity extends BaseEntity<AppSettingsDTO>
    with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    required int themeMode,
    required int color,
    @Default(false) bool skipIntro,
  }) = _AppSettingsEntity;

  const AppSettingsEntity._();

  factory AppSettingsEntity.initial() {
    return AppSettingsEntity(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
      skipIntro: false,
    );
  }

  factory AppSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsEntityFromJson(json);

  ThemeMode get themeModeEnum => ThemeMode.values[themeMode];
  Color get colorEnum => Color(color);

  @override
  List<Object?> get props => [themeMode, color, skipIntro];

  @override
  AppSettingsDTO toDTO() => AppSettingsDTO(
        themeMode: themeMode,
        color: color,
        skipIntro: skipIntro,
      );
}
