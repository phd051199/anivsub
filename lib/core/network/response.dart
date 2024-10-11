import 'package:dio/dio.dart';

sealed class ResponseWrapper<T> {
  K when<K>(
    K Function(T data) isSuccess,
    K Function(String error) isError,
  ) {
    return switch (this) {
      Success(data: T data) => isSuccess(data),
      Error(error: String error) => isError(error),
    };
  }
}

class Success<T> extends ResponseWrapper<T> {
  Success(this.data);
  final T data;
}

class Error<T> extends ResponseWrapper<T> {
  Error(this.error);
  final String error;
}

Future<ResponseWrapper<T>> execute<T>(
  Future<T> Function() operation, {
  ResponseWrapper<T> Function(dynamic e)? onError,
}) async {
  try {
    final response = await operation();
    return Success(response);
  } catch (e) {
    if (e is DioException) {
      // ignore: avoid_dynamic_calls
      return Error(e.response?.data['message'] ?? '');
    }
    return onError?.call(e) ?? Error(e.toString());
  }
}
