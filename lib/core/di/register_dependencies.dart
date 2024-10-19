import 'package:anivsub/core/di/di.dart';
import 'package:anivsub/core/di/register_http_client.dart';
import 'package:anivsub/core/environment/environment.dart';

Future<void> registerDependencies(Environment environment) async {
  await registerCookieManager();
  await registerCacheManager();

  registerHttpClient(environment);
  configureInjection();
}
