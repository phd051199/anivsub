import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

@injectableInit
void configureInjection() => GetIt.I.init();

@module
abstract class RegisterModule {
  @lazySingleton
  AndroidOptions get androidOptions =>
      AndroidOptions(encryptedSharedPreferences: true);

  @lazySingleton
  IOSOptions get iosOptions => IOSOptions();
}
