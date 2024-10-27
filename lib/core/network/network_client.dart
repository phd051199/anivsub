import 'package:anivsub/core/network/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'parse_json_interceptor.dart';

class NetworkClient {
  static Dio getDio({
    String? baseUrl,
    CookieManager? cookieManager,
    bool useCache = true,
    bool isAuthenticated = true,
    Map<String, dynamic>? headers,
  }) {
    final dio = _createDio(baseUrl, headers);

    _addInterceptors(dio, isAuthenticated, cookieManager, useCache);
    return dio;
  }

  static Dio _createDio(String? baseUrl, Map<String, dynamic>? headers) {
    final timeout = const Duration(seconds: 20);

    return Dio(
      BaseOptions(
        baseUrl: baseUrl ?? '',
        headers: headers,
        connectTimeout: timeout,
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      ),
    );
  }

  static void _addInterceptors(
    Dio dio,
    bool isAuthenticated,
    CookieManager? cookieManager,
    bool useCache,
  ) {
    dio.interceptors.addAll([
      if (kDebugMode)
        PrettyDioLogger(
          requestBody: false,
          responseBody: false,
        ),
      if (isAuthenticated) AuthInterceptor(),
      if (cookieManager != null) cookieManager,
      if (useCache) DioCacheInterceptor(options: GetIt.I.get<CacheOptions>()),
      ParseJsonInterceptor(),
    ]);
  }
}
