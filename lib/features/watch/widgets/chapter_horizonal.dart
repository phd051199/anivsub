import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class ChapterHorizontal extends StatelessWidget {
  const ChapterHorizontal({
    super.key,
    required this.chaps,
    required this.state,
    this.currentTabIndex,
  });

  final List<ChapDataEntity> chaps;
  final WatchLoaded state;
  final int? currentTabIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () => _onEpisodeTap(context, chaps, state),
          child: ListTile(
            minTileHeight: 32,
            contentPadding: const EdgeInsets.only(left: 4),
            title:
                Text(context.l10n.episode, style: context.textTheme.titleSmall),
            trailing: const Icon(Icons.chevron_right),
          ),
        ),
        Expanded(
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: chaps.length,
            separatorBuilder: (context, index) => const Gap(4),
            itemBuilder: (context, index) =>
                _buildChapterItem(chaps[index], index, state),
          ),
        ),
      ],
    );
  }

  void _onEpisodeTap(
    BuildContext context,
    List<ChapDataEntity> chaps,
    WatchLoaded state,
  ) {
    showModalBottomSheet(
      showDragHandle: true,
      isScrollControlled: true,
      useSafeArea: true,
      context: context,
      builder: (context) => _buildChaptersGrid(context, chaps, state),
    );
  }

  Widget _buildChaptersGrid(
    BuildContext context,
    List<ChapDataEntity> chaps,
    WatchLoaded state,
  ) {
    return Container(
      height: context.screenSize.height * 0.75,
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        shrinkWrap: true,
        itemCount: chaps.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 5,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 62 / 60,
        ),
        itemBuilder: (context, index) =>
            _buildChapterItem(chaps[index], index, state),
      ),
    );
  }

  Widget _buildChapterItem(ChapDataEntity chap, int index, WatchLoaded state) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: videoPlayerCubit,
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = _isChapterPlaying(videoPlayerState, chap, index);
          return GestureDetector(
            onTap: () => _onChapTap(context, isPlaying, chap, state),
            child: _buildChapCard(context, isPlaying, chap),
          );
        },
      ),
    );
  }

  bool _isChapterPlaying(
    VideoPlayerState state,
    ChapDataEntity chap,
    int index,
  ) {
    return (state is VideoPlayerLoaded && state.currentChap.id == chap.id) ||
        (state is VideoPlayerLoading && index == 0);
  }

  void _onChapTap(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
    WatchLoaded state,
  ) {
    if (isPlaying) return;

    if (currentTabIndex != null) {
      final currentChaps = state.tabViewItems![currentTabIndex!];
      videoPlayerCubit.updateEpisodeList(
        currentChaps?.chaps,
        currentChaps?.listEpisode,
      );
      context
          .read<WatchBloc>()
          .add(ChangeEpisode(animeDetail: currentChaps!.animeDetail!));
    }
    videoPlayerCubit.loadEpisode(chap);
  }

  Widget _buildChapCard(
    BuildContext context,
    bool isPlaying,
    ChapDataEntity chap,
  ) {
    return Card(
      elevation: 0,
      color: isPlaying ? context.theme.colorScheme.primaryContainer : null,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
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
