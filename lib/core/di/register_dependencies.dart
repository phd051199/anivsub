import 'package:anivsub/core/di/di.dart';
import 'package:anivsub/core/di/register_http_client.dart';
import 'package:anivsub/core/environment/environment.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> registerDependencies(
  Environment environment,
) async {
  await registerCookieManager();
  registerCacheManager();
  registerHttpClient(environment);
  registerSupabase();
  configureInjection();
}

void registerSupabase() {
  GetIt.I.registerSingleton<SupabaseClient>(
    SupabaseClient(
      dotenv.get('SUPABASE_URL'),
      dotenv.get('SUPABASE_ANON_KEY'),
    ),
  );
}
