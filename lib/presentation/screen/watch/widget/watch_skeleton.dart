import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/widget/detail_section.dart';
import 'package:anivsub/presentation/screen/watch/widget/empty_player.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:anivsub/shared/dimens/dimens.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:anivsub/shared/extension/number_extension.dart';
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
        Gap(Dimens.d4.responsive()),
        Skeletonizer(
          enabled: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimens.d16.responsive()),
            child: _buildDetailInfo(context, detail),
          ),
        ),
        Gap(Dimens.d4.responsive()),
        Skeletonizer(
          child: Container(
            height: Dimens.d112.responsive(),
            padding: EdgeInsets.all(Dimens.d12.responsive()),
            child: _buildChaptersPlaceholder(
              context,
              List.generate(6, (_) => ChapDataEntity.mockup()),
            ),
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
      minVerticalPadding: Dimens.d16.responsive(),
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
        padding: EdgeInsets.only(top: Dimens.d8.responsive()),
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
        padding: EdgeInsets.all(Dimens.d12.responsive()),
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
          minTileHeight: Dimens.d32.responsive(),
          contentPadding: EdgeInsets.only(left: Dimens.d4.responsive()),
          title: Text(
            context.l10n.episode,
            style: context.textTheme.titleSmall,
          ),
          trailing: const Icon(Icons.chevron_right),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (context, index) => Gap(Dimens.d2.responsive()),
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
        padding: EdgeInsets.symmetric(horizontal: Dimens.d18.responsive()),
        child: Center(
          child: Text(
            chap.name,
            style: context.textTheme.bodySmall?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
