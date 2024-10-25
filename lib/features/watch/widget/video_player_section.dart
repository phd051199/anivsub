import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/empty_player.dart';
import 'package:anivsub/features/watch/widget/video_player.dart';
import 'package:flutter/material.dart';

class VideoPlayerSection extends StatelessWidget {
  const VideoPlayerSection({
    super.key,
    required this.state,
    this.tag,
  });

  final WatchLoaded state;
  final String? tag;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Stack(
        children: [
          Hero(
            tag: tag ?? UniqueKey().toString(),
            child: const SizedBox.expand(),
          ),
          _buildVideoPlayerWidget(),
        ],
      ),
    );
  }

  Widget _buildVideoPlayerWidget() {
    if (state.chaps == null || state.chaps!.isEmpty) {
      return const EmptyPlayer(child: LoadingWidget(color: Colors.white));
    }

    return VideoPlayerWidget(
      chaps: state.chaps!,
      detail: state.detail,
      listEpisodeSkip: state.tabViewItems?.first?.listEpisode,
    );
  }
}
