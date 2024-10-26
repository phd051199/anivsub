import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/features/settings/settings.dart';
import 'package:anivsub/features/settings/widget/logout_widget.dart';
import 'package:anivsub/features/settings/widget/theme_color_widget.dart';
import 'package:anivsub/features/settings/widget/theme_mode_widget.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get_it/get_it.dart';

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
          ClearCookiesButton(),
        ],
      ),
    );
  }
}

class ClearCookiesButton extends StatelessWidget {
  const ClearCookiesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await CookieManager.instance().deleteAllCookies();
        await GetIt.I.get<CookieJar>().deleteAll();

        if (context.mounted) {
          context.showSnackBar('Cookies cleared');
        }
      },
      child: const Text('Clear cookies'),
    );
  }
}
