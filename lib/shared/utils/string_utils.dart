import 'dart:convert';

import 'package:anivsub/shared/extension/extension.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';

class StringUtils {
  const StringUtils._();

  static String capitalize(String text) {
    return text.replaceFirst(text[0], text[0].toUpperCase());
  }

  static String md5HashAsciiString(String text) {
    return md5.convert(utf8.encode(text)).toString();
  }

  static String cacheKeyBuilder(RequestOptions options) {
    if (options.method.toUpperCase() == 'POST') {
      final base64Data = options.data.toString().toBase64();
      return base64Data.length > 250
          ? base64Data.substring(0, 250)
          : base64Data;
    }
    final queryParams = options.queryParameters.entries
        .map((e) => '${e.key}=${e.value}')
        .join('&');
    final key =
        '${options.path}${queryParams.isNotEmpty ? '?$queryParams' : ''}';
    return key.length > 250 ? key.substring(0, 250) : key;
  }

  static String removeSubDomain(String url) {
    Uri uri = Uri.parse(url);
    List<String> hostParts = uri.host.split('.');
    if (hostParts.length > 2) {
      hostParts = hostParts.sublist(hostParts.length - 2);
    }
    return uri.replace(host: hostParts.join('.')).toString();
  }

  static String getImageNameFromUrl(String url) {
    final uri = Uri.parse(url);
    final pathSegments = uri.pathSegments;
    if (pathSegments.isNotEmpty) {
      return pathSegments.last;
    }
    return '';
  }
}
