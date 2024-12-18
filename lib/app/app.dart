import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/localization.dart';
import '../shared/const/const.dart';
import '../shared/shared_exports.dart';
import 'routes/go_router_config.dart';
import 'theme/app_theme.dart';
import 'theme/cubit/theme_cubit.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => themeCubit,
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) => _buildApp(context, state),
      ),
    );
  }

  Widget _buildApp(BuildContext context, ThemeState state) {
    return ScreenUtilInit(
      designSize: const Size(
        DeviceConstants.designDeviceWidth,
        DeviceConstants.designDeviceHeight,
      ),
      child: MaterialApp.router(
        builder: (context, child) {
          S.of(context);
          return MediaQuery(
            data: MediaQuery.of(context),
            child: child ?? const SizedBox.shrink(),
          );
        },
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: _buildTheme(Brightness.light, state.appSetting.colorEnum),
        darkTheme: _buildTheme(Brightness.dark, state.appSetting.colorEnum),
        themeMode: state.appSetting.themeModeEnum,
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
