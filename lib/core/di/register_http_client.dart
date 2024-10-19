import 'package:anivsub/core/environment/environment.dart';
import 'package:anivsub/core/network/network_client.dart';
import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/core/utils/string_utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';

void registerHttpClient(Environment environment) {
  final cookieManager = GetIt.I<CookieManager>();

  GetIt.I.registerLazySingleton<AuthApiClient>(
    () => AuthApiClient(
      NetworkClient.getDio(
        baseUrl: environment.baseUrl,
        headers: headers,
        cookieManager: cookieManager,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<ScrapingClient>(
    () => ScrapingClient(
      NetworkClient.getDio(
        baseUrl: hostCurl,
        headers: headers,
        isAuthenticated: false,
        cookieManager: cookieManager,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<CFWorkerApiClient>(
    () => CFWorkerApiClient(
      NetworkClient.getDio(
        baseUrl: decryptHlsUrl,
        isAuthenticated: false,
      ),
    ),
  );

  GetIt.I.registerLazySingleton<OpenDApiClient>(
    () => OpenDApiClient(
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

  GetIt.I.registerLazySingleton<CookieManager>(
    () => CookieManager(
      PersistCookieJar(
        ignoreExpires: true,
        storage: FileStorage(cookiePath),
      ),
    ),
  );
}

Future<void> registerCacheManager() async {
  final appDocDir = await getApplicationDocumentsDirectory();
  final CacheStore cacheStore = HiveCacheStore(appDocDir.path);

  GetIt.I.registerLazySingleton<CacheOptions>(
    () => CacheOptions(
      store: cacheStore,
      maxStale: const Duration(days: 7),
      policy: CachePolicy.forceCache,
      keyBuilder: cacheKeyBuilder,
      allowPostMethod: true,
    ),
  );
}
