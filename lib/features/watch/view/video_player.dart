import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/context_extension.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/features/shared/custom/better_player_material_controls.dart';
import 'package:anivsub/features/watch/cubit/video_player_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:river_player/river_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  const VideoPlayerWidget({
    super.key,
    required this.chaps,
    required this.detail,
  });

  final List<ChapDataEntity> chaps;
  final AnimeDetailEntity detail;

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState
    extends CubitState<VideoPlayerWidget, VideoPlayerCubit> {
  late final BetterPlayerController _betterPlayerController;
  late List<ChapDataEntity> _chaps;

  @override
  void initState() {
    super.initState();
    _chaps = widget.chaps;
    _initializeVideoPlayer();
    _initializeCubit();
  }

  @override
  void dispose() {
    super.dispose();
    cubit.close();
  }

  void _initializeVideoPlayer() {
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
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
      progressBarPlayedColor: context.theme.colorScheme.primary,
      progressBarHandleColor: context.theme.colorScheme.primary,
    );
  }

  void _initializeCubit() {
    if (_chaps.isNotEmpty) {
      cubit.initialize(
        chaps: _chaps,
        detail: widget.detail,
        controller: _betterPlayerController,
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
      cubit.updateChapterList(_chaps);
      _initializeCubit();
    }
  }

  @override
  Widget buildPage(BuildContext context) {
    return BlocConsumer<VideoPlayerCubit, VideoPlayerState>(
      listener: (context, state) {
        if (state is VideoPlayerError) {
          context.showSnackBar(state.message);
        }
      },
      builder: (context, state) => switch (state) {
        VideoPlayerInitial() || VideoPlayerLoading() => _buildEmptyPlayer(
            context,
            const Center(child: CircularProgressIndicator(color: Colors.white)),
          ),
        VideoPlayerLoaded() => _chaps.isNotEmpty
            ? BetterPlayer(controller: _betterPlayerController)
            : _buildEmptyPlayer(context, _buildErrorText(context)),
        _ => _buildEmptyPlayer(context, _buildErrorText(context)),
      },
    );
  }

  Widget _buildEmptyPlayer(BuildContext context, Widget child) {
    return Stack(
      children: [
        Container(
          color: Colors.black,
          child: child,
        ),
        Positioned(
          top: 10,
          left: 6,
          child: IconButton(
            onPressed: context.pop,
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 28),
          ),
        ),
      ],
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
