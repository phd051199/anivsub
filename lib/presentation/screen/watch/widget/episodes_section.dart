import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class EpisodesSection extends StatelessWidget {
  const EpisodesSection({
    super.key,
    required this.tabController,
    required this.currentTabIndex,
    required this.onTabChange,
    required this.onEpisodeTap,
    required this.onChapTap,
  });

  final TabController? tabController;
  final int currentTabIndex;
  final VoidCallback onTabChange;
  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchBloc, WatchState>(
      builder: (context, state) {
        if (state.detail == null) {
          return const SizedBox(height: 100, child: LoadingWidget());
        }

        if (state.detail!.season.isNotEmpty && state.tabViewItems != null) {
          return _MultiSeasonView(
            tabController: tabController,
            onEpisodeTap: onEpisodeTap,
            onChapTap: onChapTap,
          );
        }

        if (state.chaps != null && state.chaps!.isNotEmpty) {
          return _SingleSeasonView(
            onEpisodeTap: onEpisodeTap,
            onChapTap: onChapTap,
          );
        }

        return const SizedBox(height: 100, child: LoadingWidget());
      },
    );
  }
}

class _MultiSeasonView extends StatelessWidget {
  const _MultiSeasonView({
    required this.tabController,
    required this.onEpisodeTap,
    required this.onChapTap,
  });

  final TabController? tabController;
  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _SeasonTabBar(tabController: tabController),
        _SeasonTabView(
          tabController: tabController,
          onEpisodeTap: onEpisodeTap,
          onChapTap: onChapTap,
        ),
      ],
    );
  }
}

class _SeasonTabBar extends StatelessWidget {
  const _SeasonTabBar({required this.tabController});

  final TabController? tabController;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    if (state.detail!.season.isEmpty) {
      return const SizedBox.shrink();
    }

    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: tabController,
      isScrollable: true,
      tabs:
          state.detail!.season.map((item) => _buildTab(context, item)).toList(),
    );
  }

  Widget _buildTab(BuildContext context, Anchor item) {
    return Tab(
      child: Text(
        item.name,
        style: context.textTheme.titleSmall!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class _SeasonTabView extends StatelessWidget {
  const _SeasonTabView({
    required this.tabController,
    required this.onEpisodeTap,
    required this.onChapTap,
  });

  final TabController? tabController;
  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    return Container(
      padding: const EdgeInsets.all(16),
      height: 128,
      child: TabBarView(
        controller: tabController,
        children: state.tabViewItems!.map((item) {
          return item?.chaps == null
              ? const LoadingWidget(withBox: false)
              : _EpisodeList(
                  chaps: item!.chaps,
                  onEpisodeTap: onEpisodeTap,
                  onChapTap: onChapTap,
                );
        }).toList(),
      ),
    );
  }
}

class _SingleSeasonView extends StatelessWidget {
  const _SingleSeasonView({
    required this.onEpisodeTap,
    required this.onChapTap,
  });

  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final chaps = state.chaps!.whereNotNull().toList();

    return Container(
      height: 128,
      padding: const EdgeInsets.all(16),
      child: _EpisodeList(
        chaps: chaps,
        onEpisodeTap: onEpisodeTap,
        onChapTap: onChapTap,
      ),
    );
  }
}

class _EpisodeList extends StatelessWidget {
  _EpisodeList({
    required this.chaps,
    required this.onEpisodeTap,
    required this.onChapTap,
  });

  final List<ChapDataEntity> chaps;
  final Function(BuildContext, List<ChapDataEntity>, WatchState) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;
  final itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final initialIndex = _getInitialIndex(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _EpisodeHeader(
          onTap: () => onEpisodeTap(context, chaps, state),
        ),
        if (chaps.isNotEmpty)
          _EpisodeScrollList(
            chaps: chaps,
            initialIndex: initialIndex,
            itemScrollController: itemScrollController,
            onChapTap: onChapTap,
          ),
      ],
    );
  }

  int _getInitialIndex(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final initialIndex = chaps.indexWhere(
      (chap) => chap.id == state.initialData?.initialChap?.id,
    );
    return initialIndex > 0 ? initialIndex : 0;
  }
}

class _EpisodeHeader extends StatelessWidget {
  const _EpisodeHeader({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ListTile(
        minTileHeight: 42,
        contentPadding: const EdgeInsets.only(left: 4, bottom: 4),
        leading: Icon(
          Icons.playlist_play_rounded,
          color: context.theme.colorScheme.onSurface,
        ),
        title: Text(
          context.l10n.episodeList,
          style: context.textTheme.bodyMedium!.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              context.l10n.fullSeason,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.onSurface,
              ),
            ),
            const SizedBox(width: 8),
            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}

class _EpisodeScrollList extends StatelessWidget {
  const _EpisodeScrollList({
    required this.chaps,
    required this.initialIndex,
    required this.itemScrollController,
    required this.onChapTap,
  });

  final List<ChapDataEntity> chaps;
  final int initialIndex;
  final ItemScrollController itemScrollController;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ScrollablePositionedList.separated(
        itemScrollController: itemScrollController,
        initialScrollIndex: initialIndex,
        scrollDirection: Axis.horizontal,
        itemCount: chaps.length,
        separatorBuilder: (_, __) => const Gap(12),
        itemBuilder: (context, index) => _EpisodeChip(
          chap: chaps[index],
          index: index,
          onChapTap: onChapTap,
        ),
      ),
    );
  }
}

class _EpisodeChip extends StatelessWidget {
  const _EpisodeChip({
    required this.chap,
    required this.index,
    required this.onChapTap,
  });

  final ChapDataEntity chap;
  final int index;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;
    final isPlaying = _isChapterPlaying(
      context,
      context.watch<VideoPlayerCubit>().state,
      chap,
      index,
    );

    return ChoiceChip.elevated(
      elevation: 0,
      label: Text(
        chap.name,
        style: context.theme.textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.bold,
        ),
      ),
      selected: isPlaying,
      onSelected: (_) => onChapTap(context, isPlaying, chap, state),
    );
  }

  bool _isChapterPlaying(
    BuildContext context,
    VideoPlayerState state,
    ChapDataEntity chap,
    int index,
  ) {
    if (state is VideoPlayerLoaded && state.currentChap.id == chap.id) {
      return true;
    }

    if (state is VideoPlayerInitial) {
      final initialData = context.watch<WatchBloc>().state.initialData;
      if (initialData?.initialChap == null) {
        return index == 0;
      }
      return initialData?.initialChap!.id == chap.id;
    }

    return false;
  }
}
