import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime_list.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';

class RelatedSection extends StatelessWidget {
  const RelatedSection({
    super.key,
    required this.onTap,
  });
  final Function(AnimeDataEntity) onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AnimeList(
        movies: context.watchTypedState<WatchBloc, WatchLoaded>().detail.toPut,
        onTap: onTap,
      ),
    );
  }
}
