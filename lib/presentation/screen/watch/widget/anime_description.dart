import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
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
        height: Dimens.d180.responsive(),
        margin: EdgeInsets.only(
          left: Dimens.d12.responsive(),
          right: Dimens.d24.responsive(),
        ),
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
            Gap(Dimens.d4.responsive()),
            Text(
              movie.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(Dimens.d4.responsive()),
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
