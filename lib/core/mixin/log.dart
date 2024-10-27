import 'package:anivsub/core/utils/utils.dart';

mixin LogMixin on Object {
  void logDebug(String message, {DateTime? time}) {
    Log.debug(message, name: runtimeType.toString(), time: time);
  }

  void logError(
    Object? errorMessage, {
    Object? clazz,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    Log.error(
      errorMessage,
      name: runtimeType.toString(),
      errorObject: errorObject,
      stackTrace: stackTrace,
      time: time,
    );
  }
}
