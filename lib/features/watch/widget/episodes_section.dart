import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

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
  final Function(BuildContext, List<ChapDataEntity>, WatchLoaded) onEpisodeTap;
  final Function(BuildContext, bool, ChapDataEntity, WatchLoaded) onChapTap;

  @override
  Widget build(BuildContext context) {
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    if (state.detail.season.isNotEmpty && state.tabViewItems != null) {
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
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    if (state.detail.season.isEmpty) {
      return const SizedBox.shrink();
    }

    return TabBar(
      tabAlignment: TabAlignment.start,
      controller: tabController,
      isScrollable: true,
      tabs: state.detail.season
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
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

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
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    return Container(
      height: 128,
      padding: const EdgeInsets.all(16),
      child: _buildChapterHorizontal(
        context: context,
        chaps: state.chaps!,
      ),
    );
  }

  Widget _buildChapterHorizontal({
    required BuildContext context,
    required List<ChapDataEntity> chaps,
  }) {
    final state = context.watchTypedState<WatchBloc, WatchLoaded>();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => onEpisodeTap(context, chaps, state),
          child: ListTile(
            minTileHeight: 42,
            contentPadding: const EdgeInsets.only(left: 4),
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
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (_, __) => const Gap(2),
            itemBuilder: (context, index) =>
                _buildChapterItem(context, chaps[index], index, state),
          ),
        ),
      ],
    );
  }

  Widget _buildChapterItem(
    BuildContext context,
    ChapDataEntity chap,
    int index,
    WatchLoaded state,
  ) {
    final videoPlayerState = context.watch<VideoPlayerCubit>().state;
    final isPlaying = _isChapterPlaying(context, videoPlayerState, chap, index);

    return GestureDetector(
      onTap: () => onChapTap(context, isPlaying, chap, state),
      child: _buildChapCard(context, isPlaying, chap),
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
      final initialData =
          context.watchTypedState<WatchBloc, WatchLoaded>().initialData;
      if (initialData == null) {
        return state is VideoPlayerInitial && index == 0;
      } else {
        return (state is VideoPlayerInitial || state is VideoPlayerLoading) &&
            initialData.initialChap?.id == chap.id;
      }
    }
  }

  Widget _buildChapCard(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
  ) {
    return Card.filled(
      color: isPlaying
          ? context.theme.colorScheme.primaryContainer
          : context.theme.colorScheme.surfaceContainer,
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
