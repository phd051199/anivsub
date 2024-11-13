import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimeDescription extends StatelessWidget {
  const AnimeDescription({
    super.key,
    required this.movie,
  });

  final AnimeDataEntity movie;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 180,
        margin: const EdgeInsets.only(left: 12, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              movie.studio ?? '',
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.primary,
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const Gap(4),
            Text(
              movie.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(4),
            Text(
              movie.description,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodySmall?.copyWith(
                color: context.theme.colorScheme.secondary,
              ),
            ),
            const Spacer(),
            Text(
              movie.genre?.map((e) => e['name']).join(', ') ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.tertiary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
