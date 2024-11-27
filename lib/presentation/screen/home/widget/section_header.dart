import 'package:flutter/material.dart';

import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: Dimens.d4.responsive()),
      leading: Text(
        title,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }
}
