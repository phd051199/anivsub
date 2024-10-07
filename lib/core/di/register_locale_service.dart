import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/service/flutter_secure_storage_service.dart';
import 'package:anivsub/core/service/location_service.dart';
import 'package:anivsub/core/service/shared_preferences_service.dart';
import 'package:get_it/get_it.dart';

void registerLocaleService(GetIt getIt, Environment environment) {
  getIt.registerSingleton(environment);
  getIt.registerSingleton(LocationService());

  // Local services
  getIt.registerSingleton(SharedPreferenceService());
  getIt.registerSingleton(FlutterSecureStorageService());
}
