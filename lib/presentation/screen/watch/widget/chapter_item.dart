import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/domain_exports.dart';
import '../../../../shared/shared_exports.dart';
import '../watch.dart';
import 'chap_card.dart';
import 'cubit/video_player_cubit.dart';

class ChapterItem extends StatelessWidget {
  const ChapterItem({
    super.key,
    required this.chap,
    required this.index,
    required this.state,
    required this.onChapTap,
  });

  final ChapDataEntity chap;
  final int index;
  final WatchState state;
  final Function(BuildContext, bool, ChapDataEntity, WatchState) onChapTap;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: videoPlayerCubit,
      child: BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
        builder: (context, videoPlayerState) {
          final isPlaying = videoPlayerState is VideoPlayerLoaded &&
              videoPlayerState.currentChap.id == chap.id;

          return GestureDetector(
            onTap: () => onChapTap(context, isPlaying, chap, state),
            child: ChapCard(isPlaying: isPlaying, chap: chap),
          );
        },
      ),
    );
  }
}
