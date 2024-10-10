import 'package:anivsub/core/base/base.dart';
import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';

import '../cubit/video_player_cubit.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key, required this.url});
  final String url;

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends CubitState<VideoPlayer, VideoPlayerCubit> {
  late BetterPlayerController _betterPlayerController;

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

    cubit.initializePlayer(controller: _betterPlayerController);
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
