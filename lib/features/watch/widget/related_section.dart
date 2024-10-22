import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime_list.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';

class RelatedSection extends StatelessWidget {
  const RelatedSection({
    super.key,
    required this.state,
    required this.onTap,
  });
  final WatchLoaded state;
  final Function(AnimeDataEntity) onTap;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: const EdgeInsets.symmetric(horizontal: 16),
      initiallyExpanded: true,
      title: Text(
        context.l10n.related,
        style: context.textTheme.titleMedium?.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: AnimeList(
            movies: state.detail.toPut,
            onTap: onTap,
          ),
        ),
      ],
    );
  }
}
