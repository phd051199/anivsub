import 'package:anivsub/domain/entities/app/app_setting_entity.dart';

abstract class AppSettingLocalRepository {
  Future<void> setAppSetting(AppSettingEntity appSetting);
  Future<AppSettingEntity> getAppSetting();
}
