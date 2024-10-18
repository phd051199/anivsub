import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

void registerHttpClient(Environment environment) {
  final getIt = GetIt.instance;
  final cookieManager = getIt<CookieManager>();

  getIt.registerSingleton<AuthApiClient>(
    AuthApiClient(
      NetworkClient.getDio(
        baseUrl: environment.baseUrl,
        headers: headers,
        cookieManager: cookieManager,
      ),
    ),
  );

  getIt.registerSingleton<ScrapingClient>(
    ScrapingClient(
      NetworkClient.getDio(
        baseUrl: hostCurl,
        headers: headers,
        isAuthenticated: false,
      ),
    ),
  );

  getIt.registerSingleton<CFWorkerApiClient>(
    CFWorkerApiClient(
      NetworkClient.getDio(
        baseUrl: decryptHlsUrl,
        isAuthenticated: false,
      ),
    ),
  );

  getIt.registerSingleton<OpenDApiClient>(
    OpenDApiClient(
      NetworkClient.getDio(
        baseUrl: skApiUrl1,
        isAuthenticated: false,
      ),
    ),
  );
}

Future<void> registerCookieManager() async {
  final appDocDir = await getApplicationDocumentsDirectory();
  final cookiePath = '${appDocDir.path}/.cookies/';

  GetIt.I.registerSingleton<CookieManager>(
    CookieManager(
      PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage(cookiePath),
      ),
    ),
  );
}
