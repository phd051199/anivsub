import 'package:anivsub/core/extension/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/better_player_material_controls.dart';
import 'package:anivsub/features/shared/loading_widget.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:anivsub/features/watch/watch.dart';
import 'package:anivsub/features/watch/widget/empty_player.dart';
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
  late final VideoPlayerCubit _cubit;
  late final BetterPlayerController _betterPlayerController;
  late List<ChapDataEntity> _chaps;
  ListEpisodeResponseEntity? _listEpisodeSkip;
  InitialData? _initialData;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<VideoPlayerCubit>();
    _chaps = widget.chaps;
    _listEpisodeSkip = widget.listEpisodeSkip;
    _initialData = widget.initialData;
    _initializeVideoPlayer();
    _initializeCubit();
  }

  @override
  void dispose() {
    super.dispose();
    _cubit.close();
  }

  void _initializeVideoPlayer() {
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        autoPlay: false,
        fit: BoxFit.contain,
        autoDetectFullscreenAspectRatio: true,
        autoDetectFullscreenDeviceOrientation: true,
        controlsConfiguration: _createControlsConfiguration(),
        deviceOrientationsOnFullScreen: [
          DeviceOrientation.portraitUp,
          DeviceOrientation.landscapeLeft,
          DeviceOrientation.landscapeRight,
        ],
        deviceOrientationsAfterFullScreen: [DeviceOrientation.portraitUp],
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
          betterPlayerGlobalKey: GlobalKey(),
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
      _cubit.initialize(
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
      _cubit.updateEpisodeList(_chaps, _listEpisodeSkip);
      _initializeCubit();
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<VideoPlayerCubit, VideoPlayerState>(
      builder: (context, state) => switch (state) {
        VideoPlayerInitial() || VideoPlayerLoading() => const EmptyPlayer(
            child: LoadingWidget(color: Colors.white),
          ),
        VideoPlayerLoaded() => _chaps.isNotEmpty
            ? BetterPlayer(controller: _betterPlayerController)
            : EmptyPlayer(child: _buildErrorText(context)),
        _ => EmptyPlayer(child: _buildErrorText(context)),
      },
    );
  }

  Center _buildErrorText(BuildContext context) {
    return Center(
      child: Text(
        'No chapters found',
        style: context.textTheme.bodyMedium?.copyWith(
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
