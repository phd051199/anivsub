import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_setting_dto.freezed.dart';
part 'app_setting_dto.g.dart';

@freezed
class AppSettingDTO extends BaseDTO<AppSettingEntity> with _$AppSettingDTO {
  const factory AppSettingDTO({
    required int themeMode,
    required int color,
    @Default(false) bool skipIntro,
  }) = _AppSettingDTO;

  const AppSettingDTO._();

  factory AppSettingDTO.fromJson(Map<String, dynamic> json) =>
      _$AppSettingDTOFromJson(json);

  factory AppSettingDTO.initial() {
    return AppSettingDTO(
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
  AppSettingEntity toEntity() {
    return AppSettingEntity(
      themeMode: themeMode,
      color: color,
      skipIntro: skipIntro,
    );
  }
}
