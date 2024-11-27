import 'package:injectable/injectable.dart';

import '../../domain/entities/app/app_setting_entity.dart';
import '../../domain/repositories/app_setting_local_repository.dart';
import '../datasources/local/app_setting_local_data_source.dart';

@LazySingleton(as: AppSettingLocalRepository)
class AppSettingLocalRepositoryImpl implements AppSettingLocalRepository {
  const AppSettingLocalRepositoryImpl({
    required AppSettingLocalDataSource appSettingLocalDataSource,
  }) : _appSettingLocalDataSource = appSettingLocalDataSource;
  final AppSettingLocalDataSource _appSettingLocalDataSource;

  @override
  Future<void> setAppSetting(AppSettingEntity appSetting) {
    return _appSettingLocalDataSource.setAppSetting(appSetting.toDTO());
  }

  @override
  Future<AppSettingEntity> getAppSetting() async {
    final appSettingDTO = await _appSettingLocalDataSource.getAppSetting();
    return appSettingDTO.toEntity();
  }
}
