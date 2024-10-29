import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/network/cookies_manager.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

void registerHttpClient(Environment environment) {
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

Future<void> registerCookieManager() async {
  final appDocDir = await getApplicationDocumentsDirectory();
  final cookiePath = '${appDocDir.path}/.cookies/';
  final cookieJar = PersistCookieJar(
    storage: FileStorage(cookiePath),
  );

  GetIt.I.registerFactory<CookieJar>(() => cookieJar);
  GetIt.I.registerSingleton<CustomCookiesManager>(
    CustomCookiesManager(cookieJar),
  );
}

void registerCacheManager() {
  final CacheStore cacheStore = MemCacheStore();

  GetIt.I.registerSingleton<CacheOptions>(
    CacheOptions(
      store: cacheStore,
      maxStale: const Duration(minutes: 1),
      policy: CachePolicy.request,
    ),
  );
}
