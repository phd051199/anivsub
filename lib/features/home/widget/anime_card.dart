import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime_thumbnail.dart';
import 'package:anivsub/features/watch/widget/anime_description.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          ScreenNames.watch,
          queryParameters: {'path': movie.path, 'tag': tag},
        ),
        child: SizedBox(
          width: 340,
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
