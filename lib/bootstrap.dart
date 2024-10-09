import 'package:flutter/material.dart';
import 'package:anivsub/core/di/register_dependencies.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/environment/environment.dart';

Future<void> bootstrap(Environment environment) async {
  WidgetsFlutterBinding.ensureInitialized();
  registerDependencies(environment);
  await authNotifier.checkToken();
}