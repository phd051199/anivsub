import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/chap_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChapterItem extends StatelessWidget {
  const ChapterItem({
    super.key,
    required this.chap,
    required this.index,
    required this.state,
  });

  final ChapDataEntity chap;
  final int index;
  final WatchLoaded state;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<VideoPlayerCubit>.value(
      value: GetIt.I<VideoPlayerCubit>(),
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = _isChapterPlaying(videoPlayerState);
          return GestureDetector(
            onTap: () => _onChapTap(context, isPlaying),
            child: ChapCard(isPlaying: isPlaying, chap: chap),
          );
        },
      ),
    );
  }

  bool _isChapterPlaying(VideoPlayerState state) {
    final isThisChap =
        state is VideoPlayerLoaded && state.currentChap.id == chap.id;
    final isLoading = state is VideoPlayerLoading && index == 0;

    return isThisChap || isLoading;
  }

  void _onChapTap(BuildContext context, bool isPlaying) {
    if (isPlaying) return;

    final currentChaps = state.tabViewItems?.first;

    GetIt.I<WatchBloc>().add(
      ChangeEpisode(
        animeDetail: currentChaps!.animeDetail!,
      ),
    );

    GetIt.I<VideoPlayerCubit>()
      ..updateEpisodeList(
        currentChaps.chaps,
        currentChaps.listEpisode,
      )
      ..loadEpisode(chap);
  }
}
