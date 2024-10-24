import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_dto.freezed.dart';
part 'app_settings_dto.g.dart';

@freezed
class AppSettingsDTO extends BaseDTO<AppSettingsEntity> with _$AppSettingsDTO {
  const factory AppSettingsDTO({
    required int themeMode,
    required int color,
    @Default(false) bool skipIntro,
  }) = _AppSettingsDTO;

  const AppSettingsDTO._();

  factory AppSettingsDTO.fromJson(Map<String, dynamic> json) =>
      _$AppSettingsDTOFromJson(json);

  factory AppSettingsDTO.initial() {
    return AppSettingsDTO(
      themeMode: ThemeMode.system.index,
      color: Colors.blueAccent.value,
      skipIntro: false,
    );
  }

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
}
