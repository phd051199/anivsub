import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../app/routes/go_router_config.dart';
import '../../../../domain/domain_exports.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../widget/anime/anime_description.dart';
import '../../../widget/anime/anime_thumbnail.dart';

class AnimeCard extends StatelessWidget {
  const AnimeCard({super.key, required this.movie});
  final AnimeDataEntity movie;

  @override
  Widget build(BuildContext context) {
    final tag = UniqueKey().toString();

    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () => context.pushNamed(
          Routes.watch.name,
          queryParameters: {'path': movie.path, 'tag': tag},
        ),
        child: SizedBox(
          width: Dimens.d340.responsive(),
          child: Row(
            children: [
              AnimeThumbnail(
                imageUrl: movie.image,
                process: movie.process,
              ),
              AnimeDescription(movie: movie),
            ],
          ),
        ),
      ),
    );
  }
}
