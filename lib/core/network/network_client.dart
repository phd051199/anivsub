import 'package:anivsub/core/network/auth_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'parse_json_interceptor.dart';

class NetworkClient {
  static Dio getDio({
    required String baseUrl,
    bool isAuthenticated = true,
    Map<String, dynamic>? headers,
  }) {
    return Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 20),
        headers: headers,
      ),
    )..interceptors.addAll([
        if (kDebugMode)
          PrettyDioLogger(requestBody: false, responseBody: false),
        if (isAuthenticated) AuthInterceptor(),
        ParseJsonInterceptor(),
      ]);
  }
}
