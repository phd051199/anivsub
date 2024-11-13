import 'package:anivsub/shared/di/register_dependencies.dart';
import 'package:anivsub/shared/di/shared_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> bootstrap() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await dotenv.load();
  await registerHost();

  await registerDependencies();
  await authNotifier.checkToken();
}
