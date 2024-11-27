import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../widget/loading_widget.dart';
import '../watch.dart';
import 'empty_player.dart';
import 'video_player.dart';

class VideoPlayerSection extends StatelessWidget {
  const VideoPlayerSection({
    super.key,
    this.tag,
    this.currentTabIndex = 0,
  });

  final String? tag;
  final int currentTabIndex;

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
          _buildVideoPlayerWidget(context),
        ],
      ),
    );
  }

  Widget _buildVideoPlayerWidget(BuildContext context) {
    final state = context.watch<WatchBloc>().state;

    if (state is! WatchLoaded || state.chaps == null) {
      return const EmptyPlayer(
        child: LoadingWidget(color: Colors.white),
      );
    }

    if (state.chaps?.isEmpty ?? true) {
      return const EmptyPlayer();
    }

    return VideoPlayerWidget(
      chaps: state.chaps?.whereNotNull().toList() ?? [],
      detail: state.detail,
      initialData: state.initialData,
      listEpisodeSkip: state.tabViewItems?[currentTabIndex]?.listEpisode,
    );
  }
}
