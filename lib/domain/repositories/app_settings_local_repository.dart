import 'package:anivsub/domain/entities/app/app_settings_entity.dart';

abstract class AppSettingsLocalRepository {
  Future<void> setAppSettings(AppSettingsEntity appSettings);
  Future<AppSettingsEntity> getAppSettings();
}
