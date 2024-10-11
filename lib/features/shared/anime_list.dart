import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'anime_thumbnail.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({
    super.key,
    required this.movies,
  });

  final List<AnimeDataEntity> movies;

  @override
  Widget build(BuildContext context) {
    int itemCount = movies.length;
    int missingItems = (3 - (itemCount % 3)) % 3;

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: IntrinsicWidth(
        child: Wrap(
          runSpacing: 24,
          alignment: WrapAlignment.spaceBetween,
          children: [
            ...movies.map((item) {
              return AnimeCard(item: item);
            }),
            ...List.generate(
              missingItems,
              (_) => const SizedBox(width: 120),
            ),
          ],
        ),
      ),
    );
  }
}

class AnimeCard extends StatelessWidget {
  const AnimeCard({
    super.key,
    required this.item,
  });

  final AnimeDataEntity item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(
        ScreenNames.watch,
        pathParameters: {
          'path': item.path,
        },
      ),
      child: SizedBox(
        width: 120,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AnimeThumbnail(
              movie: item,
              height: 160,
            ),
            const SizedBox(height: 8),
            Text(
              item.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall!.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
