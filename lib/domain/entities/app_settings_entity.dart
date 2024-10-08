import 'package:anivsub/data/dto/app_settings_dto.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';

class AppSettingsEntity extends BaseEntity<AppSettingsDTO> {

  const AppSettingsEntity({
    required this.themeMode,
    required this.color,
  });

  factory AppSettingsEntity.initial() {
    return AppSettingsEntity(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
    );
  }
  final int themeMode;
  final int color;

  AppSettingsEntity copyWith({
    int? themeMode,
    int? color,
  }) {
    return AppSettingsEntity(
      themeMode: themeMode ?? this.themeMode,
      color: color ?? this.color,
    );
  }

  ThemeMode get themeModeEnum => ThemeMode.values[themeMode];
  Color get colorEnum => Color(color);

  @override
  List<Object?> get props => [
        themeMode,
        color,
      ];

  @override
  AppSettingsDTO toDTO() {
    return AppSettingsDTO(
      themeMode: themeMode,
      color: color,
    );
  }
}
