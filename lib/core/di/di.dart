import 'package:anivsub/core/utils/utils.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import 'di.config.dart';

@injectableInit
void configureInjection() => GetIt.I.init();

@module
abstract class RegisterModule {
  @lazySingleton
  AndroidOptions get androidOptions =>
      const AndroidOptions(encryptedSharedPreferences: true);

  @lazySingleton
  IOSOptions get iosOptions => const IOSOptions();

  @lazySingleton
  Logger get logger => Logger(
        printer: PrettyPrinter(
          methodCount: 0,
          errorMethodCount: 8,
          lineLength: 120,
          colors: true,
          printEmojis: true,
          dateTimeFormat: DateTimeFormat.onlyTimeAndSinceStart,
        ),
        output: DeveloperConsoleOutput(),
        filter: ProductionFilter(),
      );
}
