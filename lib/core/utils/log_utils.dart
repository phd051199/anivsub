import 'dart:async';
import 'dart:convert';
import 'dart:developer' as dev;

import 'package:anivsub/core/shared/log_config.dart';

class Log {
  const Log._();

  static const _enableLog = LogConfig.enableGeneralLog;

  static void debug(
    Object? message, {
    String? name,
    DateTime? time,
  }) {
    _log('[DEBUG] $message', name: name ?? '', time: time);
  }

  static void error(
    Object? errorMessage, {
    String? name,
    Object? errorObject,
    StackTrace? stackTrace,
    DateTime? time,
  }) {
    _log(
      '[ERROR] $errorMessage',
      name: name ?? '',
      error: errorObject,
      stackTrace: stackTrace,
      time: time,
    );
  }

  static String prettyJson(Map<String, dynamic> json) {
    final indent = '  ' * 2;
    final encoder = JsonEncoder.withIndent(indent);

    return encoder.convert(json);
  }

  static void _log(
    String message, {
    int level = 0,
    String name = '',
    DateTime? time,
    int? sequenceNumber,
    Zone? zone,
    Object? error,
    StackTrace? stackTrace,
  }) {
    if (!_enableLog) {
      return;
    }

    dev.log(
      message,
      name: name,
      time: time,
      sequenceNumber: sequenceNumber,
      level: level,
      zone: zone,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
