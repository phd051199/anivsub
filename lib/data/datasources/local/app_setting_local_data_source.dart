import '../../dto/app_setting_dto.dart';

abstract class AppSettingLocalDataSource {
  Future<void> setAppSetting(AppSettingDTO appSetting);
  Future<AppSettingDTO> getAppSetting();
}
