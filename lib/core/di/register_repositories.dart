import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:get_it/get_it.dart';

void registerRepositories(GetIt getIt) {
  getIt.registerSingleton<AuthRepository>(
    AuthRepositoryImpl(authRemoteDataSource: authRemoteDataSource),
  );
  getIt.registerSingleton<AppSettingsLocalRepository>(
    AppSettingsLocalRepositoryImpl(
        appSettingsLocalDataSource: appSettingsLocalDataSource),
  );
  getIt.registerSingleton<AuthLocalRepository>(
    AuthLocalRepositoryImpl(authLocalDataSource: authLocalDataSource),
  );
}
