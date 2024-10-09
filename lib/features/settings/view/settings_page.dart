import 'package:flutter/material.dart';
import 'package:anivsub/features/settings/widget/logout_widget.dart';
import 'package:anivsub/features/settings/widget/theme_color_widget.dart';
import 'package:anivsub/features/settings/widget/theme_mode_widget.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            ThemeModeWidget(),
            Divider(),
            ThemeColorWidget(),
            Divider(),
            LogoutWidget(),
          ],
        ),
      ),
    );
  }
}