import 'package:anivsub/data/datasources/local/app_setting_local_data_source.dart';
import 'package:anivsub/data/dto/app_setting_dto.dart';
import 'package:anivsub/shared/service/service.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppSettingLocalDataSource)
class AppSettingLocalDataSourceImpl implements AppSettingLocalDataSource {
  const AppSettingLocalDataSourceImpl({required this.sharedPreferenceService});
  static const appSettingKey = 'app_setting';
  final SharedPreferenceService sharedPreferenceService;

  @override
  Future<AppSettingDTO> getAppSetting() async {
    final appSettingConfig =
        await sharedPreferenceService.getJSON(appSettingKey);
    return appSettingConfig.isEmpty
        ? AppSettingDTO.initial()
        : AppSettingDTO.fromJson(appSettingConfig);
  }

  @override
  Future<void> setAppSetting(AppSettingDTO appSetting) async {
    await sharedPreferenceService.saveJSON(
      appSettingKey,
      appSetting.toJson(),
    );
  }
}
