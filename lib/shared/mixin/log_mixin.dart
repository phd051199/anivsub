import 'package:anivsub/shared/shared_exports.dart';

mixin LogMixin on Object {
  void logDebug(String message, {DateTime? time}) {
    log.d(message, time: time);
  }

  void logError(
    Object? errorMessage, {
    Object? clazz,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    log.e(
      errorMessage,
      error: errorObject,
      stackTrace: stackTrace,
      time: time,
    );
  }
}
