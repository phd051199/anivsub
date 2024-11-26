import 'dart:ui';

import 'package:anivsub/resources/localization.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AnimeThumbnail extends StatelessWidget {
  const AnimeThumbnail({
    super.key,
    this.height = 180,
    this.width = 120,
    this.imageUrl,
    this.process,
    this.rate,
  });

  final String? imageUrl;
  final String? process;
  final double? height;
  final double? width;
  final double? rate;

  @override
  Widget build(BuildContext context) {
    return Card.filled(
      clipBehavior: Clip.hardEdge,
      child: Stack(
        children: [
          if (imageUrl?.isNotEmpty ?? false)
            CachedNetworkImage(
              imageUrl: imageUrl!,
              httpHeaders: headers,
              fit: BoxFit.cover,
              height: height,
              width: width,
            )
          else
            SizedBox(
              height: height,
              width: width,
            ),
          if (process?.isNotEmpty ?? false) _buildProcessOverlay(context),
          if (rate != null) _buildRatingOverlay(context),
        ],
      ),
    );
  }

  Widget _buildProcessOverlay(BuildContext context) {
    return Positioned(
      bottom: Dimens.d10.responsive(),
      left: Dimens.d10.responsive(),
      right: Dimens.d10.responsive(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: Dimens.d32.responsive(),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: Dimens.d4.responsive()),
            decoration: BoxDecoration(
              color: context.theme.colorScheme.onPrimary.withOpacity(0.8),
              borderRadius: BorderRadius.circular(12),
            ),
            child: _buildProcessText(context),
          ),
        ),
      ),
    );
  }

  Widget _buildProcessText(BuildContext context) {
    return Text(
      '${S.current.ep} $process',
      style: context.textTheme.labelMedium?.copyWith(
        fontWeight: FontWeight.bold,
      ),
      maxLines: 1,
      overflow: TextOverflow.fade,
      softWrap: false,
    );
  }

  Widget _buildRatingOverlay(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomRight: Radius.circular(12),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
        child: Container(
          height: Dimens.d24.responsive(),
          width: Dimens.d48.responsive(),
          decoration: BoxDecoration(
            color:
                context.theme.colorScheme.secondaryContainer.withOpacity(0.9),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          alignment: Alignment.center,
          child: _buildRatingText(context),
        ),
      ),
    );
  }

  Widget _buildRatingText(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          rate?.toStringAsFixed(1) ?? '0.0',
          style: context.textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSecondaryContainer,
          ),
        ),
        Gap(Dimens.d2.responsive()),
        Icon(
          Icons.star,
          size: 14,
          color:
              context.theme.colorScheme.onSecondaryContainer.withOpacity(0.8),
        ),
      ],
    );
  }
}
