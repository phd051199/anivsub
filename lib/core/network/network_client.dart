import 'package:anivsub/core/network/auth_interceptor.dart';
import 'package:anivsub/core/utils/string_utils.dart';
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
        connectTimeout: const Duration(seconds: 20),
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
      _BackgroundRefreshInterceptor(
        dio: dio,
        cacheOptions: GetIt.I.get<CacheOptions>(),
      ),
    ]);

    return dio;
  }
}

class _BackgroundRefreshInterceptor extends Interceptor {
  _BackgroundRefreshInterceptor({
    required this.dio,
    required this.cacheOptions,
  });
  final Dio dio;
  final CacheOptions cacheOptions;
  final Map<String, bool> _refreshingKeys = {};

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.statusCode == 200) {
      return super.onResponse(response, handler);
    }

    final key = cacheKeyBuilder(response.requestOptions);

    if (!_refreshingKeys.containsKey(key)) {
      _refreshingKeys[key] = true;
      _refreshInBackground(response.requestOptions, key).then((_) {
        _refreshingKeys.remove(key);
      });
    }

    return super.onResponse(response, handler);
  }

  Future<void> _refreshInBackground(RequestOptions options, String key) async {
    await cacheOptions.store?.delete(key);
    await dio.fetch(options);
  }
}
