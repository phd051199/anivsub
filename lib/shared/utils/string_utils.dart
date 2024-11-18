import 'package:anivsub/shared/extension/extension.dart';
import 'package:dio/dio.dart';

class StringUtils {
  const StringUtils._();

  /// Capitalizes the first character of the given text.
  ///
  /// Example:
  /// ```dart
  /// StringUtils.capitalize('hello') // returns 'Hello'
  /// StringUtils.capitalize('') // returns ''
  /// ```
  static String capitalize(String text) {
    if (text.isEmpty) return text;
    return text[0].toUpperCase() + text.substring(1);
  }

  /// Builds a cache key from the given request options.
  ///
  /// Takes [RequestOptions] and generates a cache key based on the request method:
  /// - For POST requests: Base64 encodes the request data
  /// - For other requests: Combines the path and query parameters
  ///
  /// The returned key is truncated to 250 characters if longer.
  ///
  /// Example:
  /// ```dart
  /// final options = RequestOptions(path: '/api/data', queryParameters: {'id': '123'});
  /// StringUtils.cacheKeyBuilder(options) // returns '/api/data?id=123'
  /// ```
  static String cacheKeyBuilder(RequestOptions options) {
    if (options.method.toUpperCase() == 'POST') {
      final base64Data = options.data.toString().toBase64();
      return base64Data.length > 250
          ? base64Data.substring(0, 250)
          : base64Data;
    }

    final queryParams = options.queryParameters.entries
        .map(
          (e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value.toString())}',
        )
        .join('&');

    final key =
        '${options.path}${queryParams.isNotEmpty ? '?$queryParams' : ''}';
    return key.length > 250 ? key.substring(0, 250) : key;
  }

  /// Removes the subdomain from a given URL.
  ///
  /// Takes a [url] string and returns the URL with only the main domain and top-level domain.
  ///
  /// Example:
  /// ```dart
  /// StringUtils.removeSubDomain('sub.example.com') // returns 'example.com'
  /// StringUtils.removeSubDomain('example.com') // returns 'example.com'
  /// ```
  /// Returns the original URL if parsing fails.
  static String removeSubDomain(String url) {
    try {
      final Uri uri = Uri.parse(url);
      List<String> hostParts = uri.host.split('.');
      if (hostParts.length > 2) {
        hostParts = hostParts.sublist(hostParts.length - 2);
      }
      return uri.replace(host: hostParts.join('.')).toString();
    } catch (e) {
      return url;
    }
  }
}
