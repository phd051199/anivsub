import 'package:anivsub/app/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/resources/localization.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
      padding: EdgeInsets.only(top: Dimens.d16.responsive()),
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
  const AnimeCard({
    super.key,
    required this.item,
    this.onTap,
  });

  final AnimeDataEntity item;
  final void Function(AnimeDataEntity)? onTap;

  @override
  Widget build(BuildContext context) {
    final tag = UniqueKey().toString();

    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {
          if (onTap != null) {
            onTap!(item);
          } else {
            context.pushNamed(
              Routes.watch.name,
              queryParameters: {'path': item.path, 'tag': tag.toString()},
            );
          }
        },
        child: SizedBox(
          width: Dimens.d120.responsive(),
          child: SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AnimeThumbnail(
                  imageUrl: item.image,
                  process: item.process,
                  rate: item.rate,
                  height: Dimens.d160.responsive(),
                ),
                Gap(Dimens.d8.responsive()),
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
                    padding: EdgeInsets.only(top: Dimens.d2.responsive()),
                    child: Text(
                      '${S.current.views}: ${item.views?.formatNumber()}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.theme.colorScheme.secondary,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
