import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../domain/domain_exports.dart';
import '../../../shared/dimens/dimens.dart';
import '../../../shared/extension/context_extension.dart';

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
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.theme.colorScheme.primary,
              ),
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
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall?.copyWith(
                color: context.theme.colorScheme.secondary,
              ),
            ),
            const Spacer(),
            Text(
              movie.genre?.map((e) => e['name']).join(', ') ?? '',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: context.textTheme.titleSmall?.copyWith(
                color: context.theme.colorScheme.tertiary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
