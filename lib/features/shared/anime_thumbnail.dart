import 'dart:ui';

import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AnimeThumbnail extends StatelessWidget {
  const AnimeThumbnail({
    super.key,
    required this.movie,
    this.height = 180,
    this.width = 120,
  });
  final AnimeDataEntity movie;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          clipBehavior: Clip.hardEdge,
          child: CachedNetworkImage(
            imageUrl: movie.image,
            httpHeaders: headers,
            fit: BoxFit.cover,
            height: height,
            width: width,
            placeholder: (context, url) => Shimmer.fromColors(
              baseColor: context.theme.colorScheme.surface,
              highlightColor: context.theme.colorScheme.onSurface,
              child: Container(
                height: height,
                width: width,
                color: context.theme.colorScheme.onPrimary.withOpacity(0.25),
              ),
            ),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
        if (movie.process != '')
          Positioned(
            bottom: 10,
            left: 10,
            right: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                  height: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: context.theme.colorScheme.onPrimary.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    '${context.l10n.ep}${movie.process}',
                    style: context.textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
