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

    _initialize();
  }

  void _initialize() async {
    _videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(widget.url));

    _chewieController = ChewieController(
      aspectRatio: 16 / 9,
      videoPlayerController: _videoPlayerController,
      autoPlay: false,
      autoInitialize: true,
    );
  }

  @override
  void dispose() async {
    super.dispose();

    await _chewieController.pause();
    _chewieController.dispose();
    _videoPlayerController.dispose();
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
