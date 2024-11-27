import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';
import '../../../widget/anime/anime_thumbnail.dart';
import '../watch.dart';

class DetailBottomSheet extends StatelessWidget {
  const DetailBottomSheet({super.key, required this.state});
  final WatchState state;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.detail,
              style: context.textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Gap(Dimens.d12.responsive()),
            AnimeThumbnail(imageUrl: state.detail?.image ?? ''),
            Gap(Dimens.d12.responsive()),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Padding(
                padding: EdgeInsets.only(bottom: Dimens.d12.responsive()),
                child: Text(
                  S.current.introduction,
                  style: context.textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              subtitle: Text(
                state.detail?.description ?? '',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.theme.colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
