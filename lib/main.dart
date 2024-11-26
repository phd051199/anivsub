import 'dart:async';

import 'package:anivsub/app/app.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/di/register_dependencies.dart';
import 'package:anivsub/shared/shared_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() => runZonedGuarded(_runMyApp, _reportError);

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
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
