import 'dart:convert';

import 'package:anivsub/core/utils/log_utils.dart';
import 'package:dio/dio.dart';

class ParseJsonInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    Log.debug(response.realUri.toString());

    if (response.realUri.toString().contains('ajax/player')) {
      response.data = json.decode(response.data);
      super.onResponse(response, handler);
      return;
    }
    super.onResponse(response, handler);
  }
}
