import 'package:anivsub/core/di/shared_export.dart';

mixin LogMixin on Object {
  void logDebug(String message, {DateTime? time}) {
    logger.d(message, time: time);
  }

  void logError(
    Object? errorMessage, {
    Object? clazz,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    logger.e(
      errorMessage,
      error: errorObject,
      stackTrace: stackTrace,
      time: time,
    );
  }
}
