import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../utils/logger.dart';
import 'di.config.dart';

@injectableInit
void configureInjection() => GetIt.I.init();

@module
abstract class RegisterModule {
  @singleton
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
