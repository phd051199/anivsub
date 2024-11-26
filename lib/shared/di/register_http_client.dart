import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/network/cookies_manager.dart';
import 'package:anivsub/shared/network/network_client.dart';
import 'package:anivsub/shared/shared_exports.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get_it/get_it.dart';

void registerHttpClient() {
  final cookieManager = GetIt.I<CustomCookiesManager>();

  GetIt.I.registerSingleton<AuthApiClient>(
    AuthApiClient(
      NetworkClient.getDio(
        baseUrl: getItHost,
        headers: headers,
        cookieManager: cookieManager,
      ),
    ),
  );

  GetIt.I.registerSingleton<ScrapingClient>(
    ScrapingClient(
      NetworkClient.getDio(
        baseUrl: getItHost,
        headers: headers,
        isAuthenticated: false,
        cookieManager: cookieManager,
      ),
    ),
  );

  GetIt.I.registerSingleton<EpisodeSkipApiClient>(
    EpisodeSkipApiClient(
      NetworkClient.getDio(
        baseUrl: sk9animetvApiUrl,
        isAuthenticated: false,
      ),
    ),
  );

  GetIt.I.registerSingleton<FbApiClient>(
    FbApiClient(
      NetworkClient.getDio(
        isAuthenticated: false,
        baseUrl: fbBaseUrl,
        cookieManager: cookieManager,
        useCache: false,
      ),
    ),
  );
}

void registerCookieManager() {
  final appDocDir = GetIt.I.get<String>(
    instanceName: 'APP_DOC_DIR',
  );
  final cookiePath = '$appDocDir/.cookies/';
  final cookieJar = PersistCookieJar(
    storage: FileStorage(cookiePath),
  );

  GetIt.I.registerFactory<CookieJar>(() => cookieJar);
  GetIt.I.registerSingleton<CustomCookiesManager>(
    CustomCookiesManager(cookieJar),
  );
}

void registerCacheManager() {
  GetIt.I.registerSingleton<CacheOptions>(
    CacheOptions(
      store: MemCacheStore(),
      maxStale: const Duration(minutes: 1),
      policy: CachePolicy.forceCache,
    ),
  );
}
