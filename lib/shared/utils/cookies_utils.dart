import 'dart:io' as io;

import 'package:anivsub/shared/shared_exports.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class CookiesUtils {
  const CookiesUtils._();

  static Future<void> getCookiesAndSetInDio(String url) async {
    try {
      final List<Cookie> cookies =
          await CookieManager.instance().getCookies(url: WebUri(url));

      if (cookies.isNotEmpty) {
        await cookieJar.saveFromResponse(
          Uri.parse(url),
          cookies.map(_convertToIOCookie).toList(),
        );
      }
    } catch (e) {
      log.e('Error getting cookies and setting in dio $e');
    }
  }

  static io.Cookie _convertToIOCookie(Cookie cookie) {
    return io.Cookie(cookie.name, cookie.value)
      ..domain = cookie.domain
      ..path = cookie.path
      ..expires = cookie.expiresDate != null
          ? DateTime.fromMillisecondsSinceEpoch(
              cookie.expiresDate!.toInt(),
            )
          : null
      ..httpOnly = cookie.isHttpOnly ?? false
      ..secure = cookie.isSecure ?? false;
  }
}
