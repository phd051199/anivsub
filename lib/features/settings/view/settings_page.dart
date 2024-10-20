import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/settings/settings.dart';
import 'package:anivsub/features/settings/widget/logout_widget.dart';
import 'package:anivsub/features/settings/widget/theme_color_widget.dart';
import 'package:anivsub/features/settings/widget/theme_mode_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends CubitState<SettingsPage, SettingsCubit> {
  @override
  Widget buildPage(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          ThemeModeWidget(),
          Divider(),
          ThemeColorWidget(),
          Divider(),
          LogoutWidget(),
        ],
      ),
    );
  }
}
