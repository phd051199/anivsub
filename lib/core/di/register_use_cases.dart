import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:get_it/get_it.dart';

void registerUseCases(GetIt getIt) {
  getIt
      .registerFactory(() => AuthUseCases(authRepository, authLocalRepository));
  getIt.registerFactory(() => ProfileUseCases(authRepository));
  getIt.registerSingleton(AppSettingsUseCases(appSettingsLocalRepository));
  getIt.registerSingleton(HomeUseCases(authLocalRepository));
}
