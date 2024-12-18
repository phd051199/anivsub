import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../data/data_exports.dart';
import '../../../../domain/domain_exports.dart';
import '../../../../resources/localization.dart';
import '../../../../shared/dimens/dimens.dart';
import '../../../../shared/extension/context_extension.dart';
import '../../../widget/loading_widget.dart';
import '../watch.dart';
import 'cubit/video_player_cubit.dart';

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
        if (state.isChapsLoading) {
          return SizedBox(
            height: Dimens.d100.responsive(),
            child: const LoadingWidget(),
          );
        }

        if ((state.detail?.season.isNotEmpty ?? false) &&
            state.tabViewItems != null) {
          return _MultiSeasonView(
            tabController: tabController,
            onEpisodeTap: onEpisodeTap,
            onChapTap: onChapTap,
          );
        }

        return _SingleSeasonView(
          onEpisodeTap: onEpisodeTap,
          onChapTap: onChapTap,
        );
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

    if (state.detail?.season.isEmpty ?? true) {
      return const SizedBox.shrink();
    }

    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: tabController,
      isScrollable: true,
      tabs: state.detail?.season
              .map((item) => _buildTab(context, item))
              .toList() ??
          [],
    );
  }

  Widget _buildTab(BuildContext context, Anchor item) {
    return Tab(
      child: Text(
        item.name,
        style: context.textTheme.titleSmall?.copyWith(
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
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      height: Dimens.d128.responsive(),
      child: TabBarView(
        controller: tabController,
        children: state.tabViewItems?.map((item) {
              return item?.chaps == null
                  ? const LoadingWidget(withBox: false)
                  : _EpisodeList(
                      chaps: item?.chaps ?? [],
                      onEpisodeTap: onEpisodeTap,
                      onChapTap: onChapTap,
                    );
            }).toList() ??
            [],
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
    final chaps = state.chaps?.whereNotNull().toList();

    return Container(
      height: Dimens.d128.responsive(),
      padding: EdgeInsets.all(Dimens.d16.responsive()),
      child: _EpisodeList(
        chaps: chaps ?? [],
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
        contentPadding: EdgeInsets.only(
          left: Dimens.d4.responsive(),
          bottom: Dimens.d4.responsive(),
        ),
        leading: Icon(
          Icons.playlist_play_rounded,
          color: context.theme.colorScheme.onSurface,
        ),
        title: Text(
          S.current.episodeList,
          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
            color: context.theme.colorScheme.onSurface,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              S.current.fullSeason,
              style: context.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.onSurface,
              ),
            ),
            Gap(Dimens.d8.responsive()),
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
      height: Dimens.d48.responsive(),
      child: ScrollablePositionedList.separated(
        itemScrollController: itemScrollController,
        initialScrollIndex: initialIndex,
        scrollDirection: Axis.horizontal,
        itemCount: chaps.length,
        separatorBuilder: (_, __) => Gap(Dimens.d12.responsive()),
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
        style: context.theme.textTheme.bodySmall?.copyWith(
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
      return initialData?.initialChap?.id == chap.id;
    }

    return false;
  }
}
