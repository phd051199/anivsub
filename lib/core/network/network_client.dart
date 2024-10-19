import 'package:anivsub/core/network/auth_interceptor.dart';
import 'package:anivsub/core/network/cache_refresh_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:dio_http2_adapter/dio_http2_adapter.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'parse_json_interceptor.dart';

class NetworkClient {
  static Dio getDio({
    required String baseUrl,
    CookieManager? cookieManager,
    bool isAuthenticated = true,
    Map<String, dynamic>? headers,
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        headers: headers,
        followRedirects: false,
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      ),
    );

    dio.interceptors.addAll([
      PrettyDioLogger(
        enabled: kDebugMode,
        requestBody: false,
        responseBody: false,
      ),
      if (isAuthenticated) AuthInterceptor(),
      if (cookieManager != null) cookieManager,
      DioCacheInterceptor(options: GetIt.I.get<CacheOptions>()),
      ParseJsonInterceptor(),
      CacheRefreshInterceptor(
        dio: dio,
        cacheOptions: GetIt.I.get<CacheOptions>(),
      ),
    ]);

    dio.httpClientAdapter = Http2Adapter(
      ConnectionManager(idleTimeout: const Duration(seconds: 20)),
    );

    return dio;
  }
}
