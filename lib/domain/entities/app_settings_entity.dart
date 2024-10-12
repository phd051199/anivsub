import 'package:anivsub/data/dto/app_settings_dto.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';

class AppSettingsEntity extends BaseEntity<AppSettingsDTO> {
  const AppSettingsEntity({
    required this.themeMode,
    required this.color,
    this.skipIntro = false,
  });

  factory AppSettingsEntity.initial() {
    return AppSettingsEntity(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
      skipIntro: false,
    );
  }
  final int themeMode;
  final int color;
  final bool skipIntro;

  AppSettingsEntity copyWith({
    int? themeMode,
    int? color,
    bool? skipIntro,
  }) {
    return AppSettingsEntity(
      themeMode: themeMode ?? this.themeMode,
      color: color ?? this.color,
      skipIntro: skipIntro ?? this.skipIntro,
    );
  }

  ThemeMode get themeModeEnum => ThemeMode.values[themeMode];
  Color get colorEnum => Color(color);

  @override
  List<Object?> get props => [
        themeMode,
        color,
        skipIntro,
      ];

  @override
  AppSettingsDTO toDTO() {
    return AppSettingsDTO(
      themeMode: themeMode,
      color: color,
      skipIntro: skipIntro,
    );
  }
}
