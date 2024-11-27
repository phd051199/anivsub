import 'package:dio/dio.dart';

import '../const/const.dart';
import '../shared_exports.dart';

class RedirectInterceptor extends Interceptor {
  RedirectInterceptor(this._dio);
  final Dio _dio;

  @override
  Future<void> onResponse(
    Response response,
    ResponseInterceptorHandler handler,
  ) async {
    if (!response.isRedirect) {
      return handler.next(response);
    }
    final location = response.headers.value('location');

    if (location == null) {
      throw Exception('Redirect location is null');
    }

    log.d('Redirecting to: $location');

    final requestOptions = response.requestOptions;
    final redirectUrl =
        _buildRedirectUrl(requestOptions.uri.toString(), location);

    final redirectResponse = await _dio.get(
      redirectUrl,
      options: Options(
        headers: {...requestOptions.headers, ...headers},
        followRedirects: false,
        validateStatus: (status) =>
            status != null && status >= 200 && status < 400,
      ),
    );

    return handler.next(redirectResponse);
  }

  String _buildRedirectUrl(String originalUrl, String location) {
    if (location.startsWith('http')) {
      return location;
    }

    final uri = Uri.parse(originalUrl);
    return Uri(
      scheme: uri.scheme,
      host: uri.host,
      port: uri.port,
      path: location.startsWith('/') ? location : '/${uri.path}/$location',
    ).toString();
  }
}
