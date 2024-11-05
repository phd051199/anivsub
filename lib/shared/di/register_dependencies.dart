import 'package:anivsub/shared/di/di.dart';
import 'package:anivsub/shared/di/register_http_client.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> registerDependencies() async {
  await registerAppDocDir();
  registerCookieManager();
  registerCacheManager();
  registerHttpClient();
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

Future<void> registerAppDocDir() async {
  final appDocDir = await getApplicationDocumentsDirectory();
  GetIt.I.registerSingleton<String>(
    appDocDir.path,
    instanceName: 'APP_DOC_DIR',
  );
}
