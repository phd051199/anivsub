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
    required this.poster,
  });
  final String url;
  final EpisodeSkipResponseEntity? episodeSkip;
  final bool? skipIntro;
  final String poster;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends CubitState<VideoPlayer, VideoPlayerCubit> {
  late BetterPlayerController _betterPlayerController;
  bool _eventTriggered = false;

  @override
  void initState() {
    super.initState();
    _initializeBetterPlayer();
  }

  void _initializeBetterPlayer() {
    BetterPlayerDataSource dataSource = BetterPlayerDataSource(
      BetterPlayerDataSourceType.network,
      widget.url,
    );

    _betterPlayerController = BetterPlayerController(
      const BetterPlayerConfiguration(
        autoPlay: true,
        fit: BoxFit.contain,
        autoDetectFullscreenAspectRatio: true,
        autoDetectFullscreenDeviceOrientation: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          controlBarColor: Color.fromRGBO(41, 41, 41, 0.8),
          playIcon: Icons.play_arrow,
          controlBarHeight: 42,
          loadingColor: Colors.transparent,
        ),
      ),
      betterPlayerDataSource: dataSource,
    );

    _betterPlayerController.videoPlayerController?.addListener(_skipIntroOutro);
    cubit.initializePlayer(controller: _betterPlayerController);
  }

  void _skipIntroOutro() {
    if (_eventTriggered ||
        widget.episodeSkip == null ||
        widget.skipIntro == false) {
      return;
    }
    final position =
        _betterPlayerController.videoPlayerController!.value.position;
    _handleSkip(
      position: position,
      start: widget.episodeSkip!.intro.start,
      end: widget.episodeSkip!.intro.end,
    );
    _handleSkip(
      position: position,
      start: widget.episodeSkip!.outro.start,
      end: widget.episodeSkip!.outro.end,
    );
  }

  void _handleSkip({
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
    return SafeArea(
      child: BetterPlayer(controller: _betterPlayerController),
    );
  }
}
