import 'package:anivsub/core/const/const.dart';
import 'package:anivsub/core/network/cookies_manager.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:get_it/get_it.dart';

void registerHttpClient() {
  final cookieManager = GetIt.I<CustomCookiesManager>();

  GetIt.I.registerSingleton<AuthApiClient>(
    AuthApiClient(
      NetworkClient.getDio(
        baseUrl: hostCurl,
        headers: headers,
        cookieManager: cookieManager,
      ),
    ),
  );

  GetIt.I.registerSingleton<ScrapingClient>(
    ScrapingClient(
      NetworkClient.getDio(
        baseUrl: hostCurl,
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
  final appDocDir = GetIt.I.get<String>(
    instanceName: 'APP_DOC_DIR',
  );
  final cacheStore = HiveCacheStore('$appDocDir/.cache/');

  GetIt.I.registerSingleton<CacheOptions>(
    CacheOptions(
      store: cacheStore,
      maxStale: const Duration(minutes: 1),
      policy: CachePolicy.forceCache,
    ),
  );
}
