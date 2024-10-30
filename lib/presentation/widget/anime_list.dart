import 'package:anivsub/core/extension/extension.dart';
import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'anime_thumbnail.dart';

class AnimeList extends StatelessWidget {
  const AnimeList({
    super.key,
    required this.movies,
    this.onTap,
  });

  final List<AnimeDataEntity> movies;
  final void Function(AnimeDataEntity)? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          childAspectRatio: 0.45,
        ),
        itemBuilder: (context, index) => AnimeCard(
          item: movies[index],
          onTap: onTap,
        ),
      ),
    );
  }
}

class AnimeCard extends StatelessWidget {
  AnimeCard({
    super.key,
    required this.item,
    this.onTap,
  });

  final AnimeDataEntity item;
  final void Function(AnimeDataEntity)? onTap;
  final tag = UniqueKey().toString();

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(item);
          } else {
            context.pushNamed(
              ScreenNames.watch,
              queryParameters: {'path': item.path, 'tag': tag.toString()},
            );
          }
        },
        child: SizedBox(
          width: 120,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimeThumbnail(
                imageUrl: item.image,
                process: item.process,
                rate: item.rate,
                height: 160,
              ),
              const SizedBox(height: 8),
              Text(
                item.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              if (item.views != null && item.views != 0)
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    '${context.l10n.views}: ${item.views?.formatNumber()}',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: context.textTheme.labelSmall!.copyWith(
                      color: context.theme.colorScheme.secondary,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
