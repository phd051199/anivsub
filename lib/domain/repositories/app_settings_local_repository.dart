import 'package:anivsub/domain/entities/app_settings_entity.dart';

abstract class AppSettingsLocalRepository {
  Future<void> setAppSettings(AppSettingsEntity appSettings);
  Future<AppSettingsEntity> getAppSettings();
}
