import 'package:anivsub/core/routes/go_router_config.dart';
import 'package:anivsub/core/utils/image_url_utils.dart';
import 'package:anivsub/core/utils/string_utils.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HistoryItem extends StatelessWidget {
  const HistoryItem({super.key, required this.item});
  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushNamed(
          ScreenNames.watch,
          queryParameters: {
            'path': '/phim/${item['season']}/',
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
              imageUrl: ImageUrlUtils.addHostUrlImage(item['poster'] ?? ''),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(
          '${item['name']?.toString()}\n${item['season_name']} Tập ${item['watch_name']?.toString()}',
          style: const TextStyle(fontSize: 14),
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          formatTimestamp(item['created_at']),
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
