import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:flutter/material.dart';
import 'package:river_player/river_player.dart';

import '../cubit/video_player_cubit.dart';

class EnhancedVideoPlayer extends StatefulWidget {
  const EnhancedVideoPlayer({
    super.key,
    required this.chaps,
    required this.path,
    required this.skipIntro,
  });
  final List<ChapDataEntity> chaps;
  final String path;
  final bool skipIntro;

  @override
  State<EnhancedVideoPlayer> createState() => _EnhancedVideoPlayerState();
}

class _EnhancedVideoPlayerState
    extends CubitState<EnhancedVideoPlayer, VideoPlayerCubit> {
  late BetterPlayerController _betterPlayerController;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();

    cubit.initialize(
      path: widget.path,
      chaps: widget.chaps,
      controller: _betterPlayerController,
      skipIntro: widget.skipIntro,
    );
  }

  void _initializeVideoPlayer() {
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
        ),
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return BetterPlayer(controller: _betterPlayerController);
  }

  @override
  void dispose() {
    cubit.dispose();
    super.dispose();
  }
}
