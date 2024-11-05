import 'dart:ui';

import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
          if (imageUrl != null && imageUrl!.isNotEmpty)
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
      bottom: 10,
      left: 10,
      right: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
          child: Container(
            height: 32,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 4),
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
      '${context.l10n.ep} $process',
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
          height: 24,
          width: 48,
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
        const SizedBox(width: 2),
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
