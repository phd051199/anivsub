import 'package:anivsub/data/datasources/local/app_settings_local_data_source.dart';
import 'package:anivsub/domain/entities/app/app_settings_entity.dart';
import 'package:anivsub/domain/repositories/app_settings_local_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppSettingsLocalRepository)
class AppSettingsLocalRepositoryImpl implements AppSettingsLocalRepository {
  AppSettingsLocalRepositoryImpl({
    required AppSettingsLocalDataSource appSettingsLocalDataSource,
  }) : _appSettingsLocalDataSource = appSettingsLocalDataSource;
  final AppSettingsLocalDataSource _appSettingsLocalDataSource;

  @override
  Future<void> setAppSettings(AppSettingsEntity appSettings) {
    return _appSettingsLocalDataSource.setAppSettings(appSettings.toDTO());
  }

  @override
  Future<AppSettingsEntity> getAppSettings() async {
    final appSettingsDTO = await _appSettingsLocalDataSource.getAppSettings();
    return appSettingsDTO.toEntity();
  }
}
