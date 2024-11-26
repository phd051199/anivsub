import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/widget/anime/anime_thumbnail.dart';
import 'package:anivsub/resources/localization.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
