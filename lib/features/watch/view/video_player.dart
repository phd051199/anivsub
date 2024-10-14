import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/custom/better_player_material_controls.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
  late bool _skipIntro = widget.skipIntro;

  @override
  void initState() {
    super.initState();
    _initializeVideoPlayer();

    cubit.initialize(
      path: widget.path,
      chaps: widget.chaps,
      controller: _betterPlayerController,
      skipIntro: _skipIntro,
    );
  }

  @override
  void didUpdateWidget(EnhancedVideoPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.skipIntro != _skipIntro) {
      _skipIntro = widget.skipIntro;
      cubit.updateSkipIntro(_skipIntro);
    }
  }

  void _initializeVideoPlayer() {
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: true,
        fit: BoxFit.contain,
        autoDetectFullscreenAspectRatio: true,
        autoDetectFullscreenDeviceOrientation: true,
        controlsConfiguration: BetterPlayerControlsConfiguration(
          playerTheme: BetterPlayerTheme.custom,
          customControlsBuilder: (controller, onControlsVisibilityChanged) {
            return BetterPlayerCustomMaterialControls(
              onControlsVisibilityChanged: onControlsVisibilityChanged,
              controlsConfiguration: const BetterPlayerControlsConfiguration(
                playIcon: Icons.play_arrow,
                enableMute: false,
                enablePlayPause: false,
                enableAudioTracks: false,
                enableSubtitles: false,
                enablePlaybackSpeed: false,
                enableQualities: false,
                progressBarPlayedColor: Colors.red,
                progressBarHandleColor: Colors.red,
              ),
            );
          },
        ),
        deviceOrientationsOnFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ],
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.portraitUp,
        ],
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
