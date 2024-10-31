import 'package:flutter/foundation.dart';

class LogConfig {
  const LogConfig._();

  static const enableGeneralLog = kDebugMode;
  static const isPrettyJson = kDebugMode;
  static const enableLogUseCaseInput = false;
  static const enableLogUseCaseOutput = false;
  static const enableLogUseCaseError = kDebugMode;
}
