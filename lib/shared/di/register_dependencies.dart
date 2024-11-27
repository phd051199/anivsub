import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../data/dto/app_setting_dto.dart';
import '../const/const.dart';
import '../extension/extension.dart';
import 'di.dart';
import 'register_http_client.dart';

Future<void> registerDependencies() async {
  await registerAppDocDir();
  registerCookieManager();
  registerCacheManager();
  registerHttpClient();
  registerSupabase();
  configureInjection();
}

Future<void> registerHost() async {
  final prefs = await SharedPreferences.getInstance();
  final appSetting = prefs.getString(appSettingKey);

  if (appSetting != null) {
    final result = AppSettingDTO.fromJson(
      Map.from(jsonDecode(appSetting)),
    );

    GetIt.I.registerSingleton<String>(
      result.host?.isValidHost() == true ? result.host! : hostCurl,
      instanceName: 'HOST_CURL',
    );
  } else {
    GetIt.I.registerSingleton<String>(hostCurl, instanceName: 'HOST_CURL');
  }
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
