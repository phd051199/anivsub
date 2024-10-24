import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/core/utils/string_utils.dart';
import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';

class CacheRefreshInterceptor extends Interceptor {
  CacheRefreshInterceptor({
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
    try {
      await cacheOptions.store?.delete(key);
      await dio.fetch(options);
    } catch (e) {
      Log.error('Error refreshing in background: $e');
    }
  }
}
