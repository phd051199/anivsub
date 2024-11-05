import 'dart:convert';

import 'package:dio/dio.dart';

class ParseJsonInterceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (response.realUri.toString().contains('ajax/player')) {
      response.data = json.decode(response.data);
      super.onResponse(response, handler);
      return;
    }
    super.onResponse(response, handler);
  }
}
