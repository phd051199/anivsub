import 'dart:async';

import 'package:anivsub/core/di/register_dependencies.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> bootstrap(Environment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await dotenv.load(fileName: '.env');

  await registerDependencies(environment);
  await authNotifier.checkToken();
}
