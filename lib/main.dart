import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'app/app.dart';
import 'shared/const/const.dart';
import 'shared/di/register_dependencies.dart';
import 'shared/shared_exports.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async => await _runMyApp(),
    _reportError,
  );
}

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations(
    UiConstants.mobileOrientation,
  );

  await dotenv.load();
  await registerHost();

  await registerDependencies();
  await authNotifier.checkToken();

  runApp(const MyApp());
}

void _reportError(Object error, StackTrace stackTrace) {
  log.e(error, stackTrace: stackTrace);
}
