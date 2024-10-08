import 'package:anivsub/core/di/register_http_client.dart';
import 'package:anivsub/core/di/di.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:get_it/get_it.dart';

void registerDependencies(Environment environment) {
  final getIt = GetIt.I;

  registerHttpClient(getIt, environment);
  configureInjection();
}
