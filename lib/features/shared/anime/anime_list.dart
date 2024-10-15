import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
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
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: movies.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 0.5,
        ),
        itemBuilder: (context, index) => AnimeCard(item: movies[index]),
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
      onTap: () {
        if (context.focusScope.hasFocus) {
          context.focusScope.unfocus();
          return;
        }

        context.pushNamed(
          ScreenNames.watch,
          pathParameters: {'path': item.path},
        );
      },
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
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
            if (item.views != 0) ...[
              const SizedBox(height: 2),
              Text(
                '${context.l10n.views}: ${item.views?.formatNumber()}',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.labelSmall!.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
