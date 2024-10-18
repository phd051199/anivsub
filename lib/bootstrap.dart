import 'package:anivsub/core/di/register_dependencies.dart';
import 'package:anivsub/core/di/register_http_client.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> bootstrap(Environment environment) async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  await Supabase.initialize(
    url: '',
    anonKey: '',
  );

  await registerCookieManager();
  registerHttpClient(environment);
  registerDependencies(environment);

  await authNotifier.checkToken();
}
