import 'package:flutter/foundation.dart';

class LogConfig {
  const LogConfig._();

  static const enableGeneralLog = kDebugMode;
  static const isPrettyJson = kDebugMode;
  static const enableLogUseCaseInput = kDebugMode;
  static const enableLogUseCaseOutput = kDebugMode;
  static const enableLogUseCaseError = kDebugMode;
}
