import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension ContextExtension on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;

  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  FocusScopeNode get focusScope => FocusScope.of(this);

  Size get screenSize => MediaQuery.of(this).size;

  void showSnackBar(String message) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  S watchTypedState<B extends BlocBase<Object?>, S>() {
    final state = watch<B>().state;
    if (state is S) {
      return state;
    }
    throw StateError('Current state ${state.runtimeType} is not of type $S');
  }
}
