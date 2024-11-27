import 'package:injectable/injectable.dart';

import '../../../shared/const/const.dart';
import '../../../shared/services/service.dart';
import '../../dto/app_setting_dto.dart';
import 'app_setting_local_data_source.dart';

@LazySingleton(as: AppSettingLocalDataSource)
class AppSettingLocalDataSourceImpl implements AppSettingLocalDataSource {
  const AppSettingLocalDataSourceImpl({required this.sharedPreferenceService});
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
