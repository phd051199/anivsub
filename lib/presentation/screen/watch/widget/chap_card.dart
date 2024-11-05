import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';

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
          ? context.theme.colorScheme.primaryContainer
          : context.theme.colorScheme.surfaceContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Text(
            chap.name,
            style: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
