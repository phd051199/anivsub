import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/widget/anime_thumbnail.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key, required this.state});
  final WatchLoaded state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              context.l10n.detail,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(12),
            AnimeThumbnail(imageUrl: state.detail.image),
            const Gap(12),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Text(
                  context.l10n.introduction,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                state.detail.description,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
