import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';

class CustomCookiesManager extends CookieManager {
  CustomCookiesManager(super.cookieJar);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    try {
      final cookies = await cookieJar.loadForRequest(options.uri);
      if (cookies.isNotEmpty) {
        final previousCookies =
            options.headers[HttpHeaders.cookieHeader] as String?;
        final newCookies = CookieManager.getCookies([
          ...?previousCookies
              ?.split(';')
              .where((e) => e.isNotEmpty)
              .map((c) => Cookie.fromSetCookieValue(c)),
          ...cookies,
        ]);
        options.headers[HttpHeaders.cookieHeader] = newCookies;
      }
      handler.next(options);
    } catch (e, s) {
      final err = DioException(
        requestOptions: options,
        error: e,
        stackTrace: s,
      );
      handler.reject(err, true);
    }
  }
}
