import 'package:anivsub/app/routes/go_router_config.dart';
import 'package:anivsub/app/theme/app_theme.dart';
import 'package:anivsub/app/theme/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get_it/get_it.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => GetIt.I<ThemeCubit>(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => _buildApp(context, state),
      ),
    );
  }

  Widget _buildApp(BuildContext context, ThemeState state) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: FocusManager.instance.primaryFocus?.unfocus,
      child: MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: _buildTheme(Brightness.light, state.appSettings.colorEnum),
        darkTheme: _buildTheme(Brightness.dark, state.appSettings.colorEnum),
        themeMode: state.appSettings.themeModeEnum,
        routerConfig: goRouter,
      ),
    );
  }

  ThemeData _buildTheme(Brightness brightness, Color seedColor) {
    return AppTheme.fromBrightness(
      brightness: brightness,
      seedColor: seedColor,
    ).toThemeData();
  }
}
