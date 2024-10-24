import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime_list.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/widget/detail_section.dart';
import 'package:anivsub/features/watch/widget/empty_player.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';

class WatchSkeleton extends StatelessWidget {
  const WatchSkeleton({super.key, this.tag});

  final String? tag;

  @override
  Widget build(BuildContext context) {
    final detail = AnimeDetailEntity.mockup();
    return ListView(
      children: [
        Hero(
          tag: tag ?? UniqueKey().toString(),
          child: const AspectRatio(
            aspectRatio: 16 / 9,
            child: EmptyPlayer(child: LoadingWidget(color: Colors.white)),
          ),
        ),
        const Gap(4),
        Skeletonizer(
          enabled: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _buildDetailInfo(context, detail),
          ),
        ),
        const Gap(4),
        Skeletonizer(
          enabled: true,
          child: Container(
            height: 120,
            padding: const EdgeInsets.all(12),
            child: _buildChaptersPlaceholder(
              context,
              List.generate(6, (_) => ChapDataEntity.mockup()),
            ),
          ),
        ),
        const Gap(4),
        Skeletonizer(
          enabled: true,
          child: ExpansionTile(
            tilePadding: const EdgeInsets.symmetric(horizontal: 14),
            initiallyExpanded: true,
            title: Text(
              context.l10n.related,
              style: context.textTheme.titleMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
            ),
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: AnimeList(
                  movies: List.generate(3, (_) => AnimeDataEntity.mockup()),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildDetailInfo(BuildContext context, AnimeDetailEntity detail) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildDetailTile(context, detail),
        _buildInfoText(context, detail),
      ],
    );
  }

  Widget _buildDetailTile(BuildContext context, AnimeDetailEntity detail) {
    return ListTile(
      minVerticalPadding: 16,
      contentPadding: EdgeInsets.zero,
      title: Text(
        detail.name,
        style: context.textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(top: 8),
        child: Text(
          '${detail.views.formatNumber()} ${context.l10n.views.toLowerCase()}',
          style: context.textTheme.titleSmall?.copyWith(
            color: context.theme.colorScheme.secondary,
          ),
        ),
      ),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  Widget _buildInfoText(BuildContext context, AnimeDetailEntity detail) {
    final infoTexts = [
      InfoText(
        'Sản xuất bởi ${detail.studio}',
        TextStyle(
          color: context.theme.colorScheme.tertiary,
          fontWeight: FontWeight.bold,
        ),
        Icons.movie_creation_outlined,
      ),
      InfoText(
        'Lịch chiếu: ${detail.schedule?.toLowerCase()}',
        null,
        Icons.calendar_today_outlined,
      ),
      InfoText(
        '${detail.yearOf} | Tập ${detail.duration} | ${detail.countries.map((e) => e.name).join(', ')}',
        null,
        Icons.info_outline,
      ),
      InfoText(
        '${detail.rate} | ${detail.countRate} đánh giá | ${detail.seasonOf?.name}',
        TextStyle(
          fontWeight: FontWeight.bold,
          color: context.theme.colorScheme.secondary,
        ),
        Icons.star_outline,
      ),
      InfoText(
        detail.genre.map((e) => '#${e.name}').join(' '),
        TextStyle(
          color: context.theme.colorScheme.primary,
          fontStyle: FontStyle.italic,
        ),
        Icons.tag,
      ),
    ];

    return Card.filled(
      color: context.theme.colorScheme.surfaceContainer,
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: infoTexts.map((item) => item.build(context)).toList(),
        ),
      ),
    );
  }

  Widget _buildChaptersPlaceholder(
    BuildContext context,
    List<ChapDataEntity> chaps,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          minTileHeight: 32,
          contentPadding: const EdgeInsets.only(left: 4),
          title:
              Text(context.l10n.episode, style: context.textTheme.titleSmall),
          trailing: const Icon(Icons.chevron_right),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (context, index) => const Gap(4),
            itemBuilder: (context, index) =>
                _buildChapCard(context, chaps[index]),
          ),
        ),
      ],
    );
  }

  Widget _buildChapCard(
    BuildContext context,
    ChapDataEntity chap,
  ) {
    return Card.filled(
      color: context.theme.colorScheme.surfaceContainer,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Center(
          child: Text(
            chap.name,
            style: context.textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
