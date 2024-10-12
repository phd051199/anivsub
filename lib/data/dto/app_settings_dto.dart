import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/app_settings_entity.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class AppSettingsDTO extends BaseDTO<AppSettingsEntity> {
  const AppSettingsDTO({
    required this.themeMode,
    required this.color,
    this.skipIntro = false,
  });

  factory AppSettingsDTO.initial() {
    return AppSettingsDTO(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
      skipIntro: false,
    );
  }

  factory AppSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsDTOFromJson(json);
  final int themeMode;
  final int color;
  final bool skipIntro;

  @override
  List<Object?> get props => [
        themeMode,
        color,
        skipIntro,
      ];

  @override
  AppSettingsEntity toEntity() {
    return AppSettingsEntity(
      themeMode: themeMode,
      color: color,
      skipIntro: skipIntro,
    );
  }

  Map<String, dynamic> toJson() => _$AppSettingsDTOToJson(this);
}
