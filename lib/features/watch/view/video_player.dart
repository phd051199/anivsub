import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/entities/anime/episode_skip_response_entity.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

import '../cubit/video_player_cubit.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({
    super.key,
    required this.url,
    this.episodeSkip,
    this.skipIntro = false,
  });
  final String url;
  final EpisodeSkipResponseEntity? episodeSkip;
  final bool? skipIntro;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends CubitState<VideoPlayer, VideoPlayerCubit> {
  late BetterPlayerController _betterPlayerController;
  bool _eventTriggered = false;

  @override
  void initState() {
    super.initState();
    if (widget.url.isNotEmpty) {
      _initializeBetterPlayer();
    }
  }

  void _initializeBetterPlayer() {
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.url,
    );

    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: true,
        fit: BoxFit.contain,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          showControlsOnInitialize: false,
          controlBarColor: Color(0xFF464646).withOpacity(0.9),
          playIcon: Icons.play_arrow,
        ),
      ),
      betterPlayerDataSource: dataSource,
    );

    _betterPlayerController.videoPlayerController?.addListener(() {
      if (widget.episodeSkip == null ||
          _eventTriggered ||
          widget.skipIntro == false) {
        return;
      }
      final position =
          _betterPlayerController.videoPlayerController!.value.position;
      // Handle intro skip
      handleSkip(
        position: position,
        start: widget.episodeSkip!.intro.start,
        end: widget.episodeSkip!.intro.end,
      );
      // Handle outro skip
      handleSkip(
        position: position,
        start: widget.episodeSkip!.outro.start,
        end: widget.episodeSkip!.outro.end,
      );
    });
    cubit.initializePlayer(controller: _betterPlayerController);
  }

  void handleSkip({
    required Duration position,
    required int start,
    required int end,
  }) {
    if (position.inSeconds == start && end > start) {
      _eventTriggered = true;
      _betterPlayerController.seekTo(Duration(seconds: end));
      _eventTriggered = false;
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    if (widget.url.isNotEmpty) {
      return BetterPlayer(controller: _betterPlayerController);
    } else {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: ColoredBox(color: Colors.black),
      );
    }
  }
}
