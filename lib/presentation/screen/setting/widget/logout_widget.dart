import 'package:anivsub/shared/di/shared_export.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';

class LogoutWidget extends StatelessWidget {
  const LogoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(context.l10n.logout),
      subtitle: Text(context.l10n.logoutMessage),
      trailing: const Icon(Icons.logout),
      onTap: () => authNotifier.doLogout(),
    );
  }
}
