import 'package:flutter/widgets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class S {
  const S._();

  static late AppLocalizations current;

  static AppLocalizations of(BuildContext context) {
    current = AppLocalizations.of(context)!;

    return current;
  }
}
