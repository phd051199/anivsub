import 'package:anivsub/domain/entities/app_settings_entity.dart';
import 'package:anivsub/domain/repositories/app_settings_local_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class AppSettingsUseCases {

  const AppSettingsUseCases(this.appSettingsLocalRepository);
  final AppSettingsLocalRepository appSettingsLocalRepository;

  Future<void> setAppSettings(AppSettingsEntity appSettings) {
    return appSettingsLocalRepository.setAppSettings(appSettings);
  }

  Future<AppSettingsEntity> getAppSettings() async =>
      await appSettingsLocalRepository.getAppSettings();
}
