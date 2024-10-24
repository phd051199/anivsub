// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fb_api_client.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element

class _FbApiClient implements FbApiClient {
  _FbApiClient(
    this._dio, {
    this.baseUrl,
    this.errorLogger,
  });

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<String> getFeedback(FeedbackQueriesEntity queries) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.addAll(queries.toJson());
    final _headers = <String, dynamic>{
      r'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
      r'accept':
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
      r'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
      r'cache-control': 'max-age=0',
      r'dnt': '1',
      r'sec-ch-ua':
          '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
      r'sec-ch-ua-mobile': '?0',
      r'sec-ch-ua-platform': 'macOS',
      r'sec-ch-ua-platform-version': '15.0.1',
      r'sec-fetch-dest': 'empty',
      r'sec-fetch-mode': 'cors',
      r'sec-fetch-site': 'same-origin',
      r'sec-fetch-user': '?1',
      r'sec-gpc': '1',
      r'upgrade-insecure-requests': '1',
    };
    _headers.removeWhere((k, v) => v == null);
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<String>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/plugins/feedback.php',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<String> getComments(
    String targetID,
    String orderBy,
    Map<String, dynamic> body,
    String? xFbLsd,
    String? origin,
    String? referer,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'content-type': 'application/x-www-form-urlencoded',
      r'dpr': '1',
      r'pragma': 'no-cache',
      r'sec-ch-prefers-color-scheme': 'dark',
      r'sec-ch-ua-mobile': '?0',
      r'sec-gpc': '1',
      r'viewport-width': '727',
      r'x-asbd-id': '129477',
      r'Referrer-Policy': 'origin-when-cross-origin',
      r'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
      r'accept':
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
      r'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
      r'cache-control': 'max-age=0',
      r'dnt': '1',
      r'sec-ch-ua':
          '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
      r'sec-ch-ua-platform': 'macOS',
      r'sec-ch-ua-platform-version': '15.0.1',
      r'sec-fetch-dest': 'empty',
      r'sec-fetch-mode': 'cors',
      r'sec-fetch-site': 'same-origin',
      r'sec-fetch-user': '?1',
      r'upgrade-insecure-requests': '1',
      r'x-fb-lsd': xFbLsd,
      r'origin': origin,
      r'Referer': referer,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _options = _setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
        .compose(
          _dio.options,
          '/plugins/comments/async/${targetID}/pager/${orderBy}/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<String> postComment(
    String targetID,
    Map<String, dynamic> body,
    String? xFbLsd,
    String? origin,
    String? referer,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{
      r'content-type': 'application/x-www-form-urlencoded',
      r'dpr': '1',
      r'pragma': 'no-cache',
      r'sec-ch-prefers-color-scheme': 'dark',
      r'sec-ch-ua-mobile': '?0',
      r'sec-gpc': '1',
      r'viewport-width': '727',
      r'x-asbd-id': '129477',
      r'Referrer-Policy': 'origin-when-cross-origin',
      r'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
      r'accept':
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
      r'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
      r'cache-control': 'max-age=0',
      r'dnt': '1',
      r'sec-ch-ua':
          '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
      r'sec-ch-ua-platform': 'macOS',
      r'sec-ch-ua-platform-version': '15.0.1',
      r'sec-fetch-dest': 'empty',
      r'sec-fetch-mode': 'cors',
      r'sec-fetch-site': 'same-origin',
      r'sec-fetch-user': '?1',
      r'upgrade-insecure-requests': '1',
      r'x-fb-lsd': xFbLsd,
      r'origin': origin,
      r'Referer': referer,
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _options = _setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
        .compose(
          _dio.options,
          '/plugins/comments/async/createComment/${targetID}/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<String> deleteComment(
    String av,
    Map<String, dynamic> body,
  ) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'av': av};
    final _headers = <String, dynamic>{
      r'content-type': 'application/x-www-form-urlencoded',
      r'dpr': '1',
      r'pragma': 'no-cache',
      r'sec-ch-prefers-color-scheme': 'dark',
      r'sec-ch-ua-mobile': '?0',
      r'sec-gpc': '1',
      r'viewport-width': '727',
      r'x-asbd-id': '129477',
      r'Referrer-Policy': 'origin-when-cross-origin',
      r'user-agent':
          'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
      r'accept':
          'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
      r'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
      r'cache-control': 'max-age=0',
      r'dnt': '1',
      r'sec-ch-ua':
          '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
      r'sec-ch-ua-platform': 'macOS',
      r'sec-ch-ua-platform-version': '15.0.1',
      r'sec-fetch-dest': 'empty',
      r'sec-fetch-mode': 'cors',
      r'sec-fetch-site': 'same-origin',
      r'sec-fetch-user': '?1',
      r'upgrade-insecure-requests': '1',
    };
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(body);
    final _options = _setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
      contentType: 'application/x-www-form-urlencoded',
    )
        .compose(
          _dio.options,
          '/plugins/comments/async/delete/',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(
            baseUrl: _combineBaseUrls(
          _dio.options.baseUrl,
          baseUrl,
        )));
    final _result = await _dio.fetch<String>(_options);
    late String _value;
    try {
      _value = _result.data!;
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
