import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ChewiePlayer extends StatefulWidget {
  const ChewiePlayer({super.key, required this.url});

  final String url;

  @override
  State<ChewiePlayer> createState() => _ChewiePlayerState();
}

class _ChewiePlayerState extends State<ChewiePlayer> {
  late VideoPlayerController _videoPlayerController;
  late ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _initializeChewie();
  }

  void _initializeChewie() async {
    _videoPlayerController = VideoPlayerController.networkUrl(
      Uri.parse(widget.url),
    );

    _chewieController = ChewieController(
      aspectRatio: 16 / 9,
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      showControlsOnInitialize: false,
      hideControlsTimer: const Duration(seconds: 2),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: _chewieController.aspectRatio!,
      child: Chewie(
        controller: _chewieController,
      ),
    );
  }
}
