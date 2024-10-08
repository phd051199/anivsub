import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:get_it/get_it.dart';

void registerHttpClient(GetIt getIt, Environment environment) {
  getIt.registerSingleton<AuthApiClient>(
    AuthApiClient(
      NetworkClient.getDio(
        baseUrl: environment.baseUrl,
      ),
    ),
  );

  getIt.registerSingleton<ScrapingClient>(
    ScrapingClient(
      NetworkClient.getDio(
        baseUrl: hostCurl,
        headers: headers,
      ),
    ),
  );
}
