import 'package:anivsub/core/service/service.dart';
import 'package:anivsub/data/datasources/local/app_settings_local_data_source.dart';
import 'package:anivsub/data/dto/app_settings_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppSettingsLocalDataSource)
class AppSettingsLocalDataSourceImpl implements AppSettingsLocalDataSource {
  AppSettingsLocalDataSourceImpl({required this.sharedPreferenceService});
  static const appSettingsKey = 'app_settings';
  final SharedPreferenceService sharedPreferenceService;

  @override
  Future<AppSettingsDTO> getAppSettings() async {
    final appSettingsConfig =
        await sharedPreferenceService.getJSON(appSettingsKey);
    return appSettingsConfig.isEmpty
        ? AppSettingsDTO.initial()
        : AppSettingsDTO.fromJson(appSettingsConfig);
  }

  @override
  Future<void> setAppSettings(AppSettingsDTO appSettings) async {
    await sharedPreferenceService.saveJSON(
      appSettingsKey,
      appSettings.toJson(),
    );
  }
}
