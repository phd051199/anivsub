import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:anivsub/presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'package:anivsub/presentation/screen/watch/widget/empty_player.dart';
import 'package:anivsub/presentation/widget/better_player/better_player_material_controls.dart';
import 'package:anivsub/presentation/widget/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:river_player/river_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    required this.chaps,
    required this.detail,
    this.listEpisodeSkip,
    this.initialData,
  });

  final List<ChapDataEntity> chaps;
  final AnimeDetailEntity detail;
  final ListEpisodeResponseEntity? listEpisodeSkip;
  final InitialData? initialData;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late final VideoPlayerCubit cubit;
  late final BetterPlayerController _betterPlayerController;
  late List<ChapDataEntity> _chaps;
  ListEpisodeResponseEntity? _listEpisodeSkip;
  InitialData? _initialData;

  @override
  void initState() {
    super.initState();

    cubit = context.read<VideoPlayerCubit>();
    _chaps = widget.chaps;
    _listEpisodeSkip = widget.listEpisodeSkip;
    _initialData = widget.initialData;
    _initializeVideoPlayer();
    _initializeCubit();
  }

  void _initializeVideoPlayer() {
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: false,
        fit: BoxFit.contain,
        autoDetectFullscreenAspectRatio: true,
        autoDetectFullscreenDeviceOrientation: true,
        controlsConfiguration: _createControlsConfiguration(),
        deviceOrientationsAfterFullScreen: [
          DeviceOrientation.portraitUp,
        ],
      ),
    );
  }

  BetterPlayerControlsConfiguration _createControlsConfiguration() {
    return BetterPlayerControlsConfiguration(
      playerTheme: BetterPlayerTheme.custom,
      customControlsBuilder: (controller, onControlsVisibilityChanged) {
        return BetterPlayerCustomMaterialControls(
          onControlsVisibilityChanged: onControlsVisibilityChanged,
          controlsConfiguration: _createCustomControlsConfiguration(),
        );
      },
    );
  }

  BetterPlayerControlsConfiguration _createCustomControlsConfiguration() {
    return BetterPlayerControlsConfiguration(
      playIcon: Icons.play_arrow,
      showControlsOnInitialize: false,
      enablePlayPause: false,
      enableAudioTracks: false,
      enableSubtitles: false,
      enablePlaybackSpeed: false,
      enablePip: false,
      enableMute: false,
      progressBarPlayedColor: context.theme.colorScheme.primary,
      progressBarHandleColor: context.theme.colorScheme.primary,
      loadingWidget: const LoadingWidget(color: Colors.white),
    );
  }

  void _initializeCubit() {
    if (_chaps.isNotEmpty) {
      cubit.initialize(
        episodes: _chaps,
        animeDetail: widget.detail,
        controller: _betterPlayerController,
        listEpisodeSkip: _listEpisodeSkip,
        initialData: _initialData,
      );
    }
  }

  @override
  void didUpdateWidget(VideoPlayerWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateChapterList();
  }

  void _updateChapterList() {
    if (_chaps.isEmpty && widget.chaps != _chaps) {
      _chaps = widget.chaps;
      _listEpisodeSkip = widget.listEpisodeSkip;
      cubit.updateEpisodeList(_chaps, _listEpisodeSkip);
      _initializeCubit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) => switch (state) {
        VideoPlayerInitial() => const EmptyPlayer(
            child: LoadingWidget(color: Colors.white),
          ),
        VideoPlayerLoaded() => _chaps.isNotEmpty
            ? BetterPlayer(
                controller: _betterPlayerController,
              )
            : const EmptyPlayer(),
        _ => const EmptyPlayer(),
      },
    );
  }
}
