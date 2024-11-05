import 'package:anivsub/presentation/screen/setting/setting.dart';
import 'package:anivsub/presentation/screen/setting/widget/logout_widget.dart';
import 'package:anivsub/presentation/screen/setting/widget/theme_color_widget.dart';
import 'package:anivsub/presentation/screen/setting/widget/theme_mode_widget.dart';
import 'package:anivsub/shared/base/base.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends CubitState<SettingPage, SettingCubit> {
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
