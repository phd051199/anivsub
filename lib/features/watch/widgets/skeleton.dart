import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/core/shared/number_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/anime/anime_list.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/widgets/empty_player.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:uuid/uuid.dart';

class WatchSkeleton extends StatelessWidget {
  const WatchSkeleton({super.key, this.tag});

  final String? tag;

  @override
  Widget build(BuildContext context) {
    final detail = AnimeDetailEntity.mockup();
    return ListView(
      children: [
        Hero(
          tag: tag ?? const Uuid().v4(),
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
            height: 90,
            padding: const EdgeInsets.only(left: 12),
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
        ListTile(
          contentPadding: EdgeInsets.zero,
          title: Text(detail.name, style: context.textTheme.titleMedium),
          subtitle: Text(
            '${detail.views.formatNumber()} views',
            style: context.textTheme.titleSmall,
          ),
        ),
        ..._buildInfoTexts(context, detail),
      ],
    );
  }

  List<Widget> _buildInfoTexts(BuildContext context, AnimeDetailEntity detail) {
    final texts = [
      'Studio: ${detail.studio}',
      'Schedule: ${detail.schedule}',
      '${detail.yearOf} | ${detail.duration} | ${detail.countries.map((e) => e.name).join(', ')}',
      '${detail.rate}☆ | ${detail.countRate} ratings | ${detail.seasonOf?.name}',
      detail.genre.map((e) => '#${e.name}').join(' '),
    ];
    return texts
        .map((text) => Text(text, style: context.textTheme.bodyMedium))
        .toList();
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
