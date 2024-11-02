import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class EpisodesSection extends StatelessWidget {
  EpisodesSection({
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
  final ItemScrollController itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    if (state.detail!.season.isNotEmpty && state.tabViewItems != null) {
      return Column(
        children: [
          _buildTabBar(context),
          _buildTabBarView(context),
        ],
      );
    } else if (state.chaps != null && state.chaps!.isNotEmpty) {
      return _buildSingleSeasonView(context);
    } else {
      return const SizedBox(height: 100, child: LoadingWidget());
    }
  }

  Widget _buildTabBar(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    if (state.detail!.season.isEmpty) {
      return const SizedBox.shrink();
    }

    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: tabController,
      isScrollable: true,
      tabs: state.detail!.season
          .map(
            (item) => Tab(
              child: Text(
                item.name,
                style: context.textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildTabBarView(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    return Container(
      padding: const EdgeInsets.all(16),
      height: 128,
      child: TabBarView(
        controller: tabController,
        children: state.tabViewItems!.map((item) {
          return item?.chaps == null
              ? const LoadingWidget(withBox: false)
              : _buildChapterHorizontal(
                  context: context,
                  chaps: item!.chaps,
                );
        }).toList(),
      ),
    );
  }

  Widget _buildSingleSeasonView(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    return Container(
      height: 128,
      padding: const EdgeInsets.all(16),
      child: _buildChapterHorizontal(
        context: context,
        chaps: state.chaps!.whereNotNull().toList(),
      ),
    );
  }

  Widget _buildChapterHorizontal({
    required BuildContext context,
    required List<ChapDataEntity> chaps,
  }) {
    final state = context.watch<WatchBloc>().state;
    final initialIndex = chaps.indexWhere(
      (chap) => chap.id == state.initialData?.initialChap?.id,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => onEpisodeTap(context, chaps, state),
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
        ),
        SizedBox(
          height: 48,
          child: ScrollablePositionedList.separated(
            physics: const ClampingScrollPhysics(),
            itemScrollController: itemScrollController,
            initialScrollIndex: initialIndex,
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (context, index) => const Gap(12),
            itemBuilder: (context, index) {
              final isPlaying = _isChapterPlaying(
                context,
                context.watch<VideoPlayerCubit>().state,
                chaps[index],
                index,
              );

              return ChoiceChip.elevated(
                elevation: 0,
                label: Text(
                  chaps[index].name,
                  style: context.theme.textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                selected: isPlaying,
                onSelected: (_) => onChapTap(
                  context,
                  isPlaying,
                  chaps[index],
                  state,
                ),
              );
            },
          ),
        ),
      ],
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
    } else {
      final initialData = context.watch<WatchBloc>().state.initialData;
      if (initialData == null) {
        return state is VideoPlayerInitial && index == 0;
      } else {
        return state is VideoPlayerInitial &&
            initialData.initialChap?.id == chap.id;
      }
    }
  }
}
