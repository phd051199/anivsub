import 'package:anivsub/shared/di/shared_export.dart';

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
