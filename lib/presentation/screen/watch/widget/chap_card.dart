import 'package:flutter/material.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';

class ChapCard extends StatelessWidget {
  const ChapCard({
    super.key,
    required this.isPlaying,
    required this.chap,
  });
  final bool isPlaying;
  final ChapDataEntity chap;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      color: isPlaying
          ? context.theme.colorScheme.secondaryContainer
          : context.theme.colorScheme.surfaceContainer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimens.d16.responsive()),
        child: Center(
          child: Text(
            chap.name,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
