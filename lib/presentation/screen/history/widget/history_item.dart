import 'package:anivsub/app/routes/go_router_config.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:anivsub/shared/utils/utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.item});
  final QueryHistoryEntity item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          ScreenNames.watch,
          queryParameters: {
            'path': '/phim/${item.season}/',
          },
        );
      },
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        leading: AspectRatio(
          aspectRatio: 16 / 9,
          child: Container(
            width: 100,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            child: CachedNetworkImage(
              imageUrl: ImageUrlUtils.addHostUrlImage(item.poster ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          '${context.l10n.ep} ${item.watchName} - ${item.name}\n${item.seasonName}',
          style: context.textTheme.titleSmall,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          DateTimeUtils.formatTimestamp(item.createdAt, context),
          style: context.textTheme.bodySmall?.copyWith(
            color: context.theme.colorScheme.onSurfaceVariant,
          ),
        ),
      ),
    );
  }
}