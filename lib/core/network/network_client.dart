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
        connectTimeout: const Duration(seconds: 20),
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
    ]);

    return dio;
  }
}
