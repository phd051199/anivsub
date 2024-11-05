import 'dart:async';

import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/widget/cubit/video_player_cubit.dart';
import 'package:anivsub/shared/di/shared_export.dart';
import 'package:anivsub/shared/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:river_player/river_player.dart';
import 'package:river_player/src/video_player/video_player.dart';
import 'package:river_player/src/video_player/video_player_platform_interface.dart';

class BetterPlayerCustomMaterialVideoProgressBar extends StatefulWidget {
  const BetterPlayerCustomMaterialVideoProgressBar({
    super.key,
    required this.controller,
    required this.betterPlayerController,
    this.colors,
    this.onDragEnd,
    this.onDragStart,
    this.onDragUpdate,
    this.onTapDown,
  });

  final VideoPlayerController? controller;
  final BetterPlayerController? betterPlayerController;
  final BetterPlayerProgressColors? colors;
  final VoidCallback? onDragStart;
  final VoidCallback? onDragEnd;
  final VoidCallback? onDragUpdate;
  final VoidCallback? onTapDown;

  @override
  State<BetterPlayerCustomMaterialVideoProgressBar> createState() =>
      _VideoProgressBarState();
}

class _VideoProgressBarState
    extends State<BetterPlayerCustomMaterialVideoProgressBar> {
  late VoidCallback _listener;
  bool _controllerWasPlaying = false;
  bool _shouldPlayAfterDragEnd = false;
  Duration? _lastSeek;
  Timer? _updateBlockTimer;

  VideoPlayerController? get _controller => widget.controller;
  BetterPlayerController? get _betterPlayerController =>
      widget.betterPlayerController;

  @override
  void initState() {
    super.initState();
    _listener = () {
      if (mounted) setState(() {});
    };
    _controller?.addListener(_listener);
  }

  @override
  void deactivate() {
    _controller?.removeListener(_listener);
    _cancelUpdateBlockTimer();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: _onDragStart,
      onHorizontalDragUpdate: _onDragUpdate,
      onHorizontalDragEnd: _onDragEnd,
      onTapDown: _onTapDown,
      child: _buildProgressBar(context),
    );
  }

  Widget _buildProgressBar(BuildContext context) {
    if (videoPlayerCubit.state is! VideoPlayerLoaded) {
      return const SizedBox.shrink();
    }

    final duration = _betterPlayerController
            ?.videoPlayerController?.value.duration?.inSeconds ??
        1;
    final introOutroSegment = _calculateIntroOutroSegment(
      videoPlayerCubit.state.episodeSkip,
      duration,
    );

    return Center(
      child: Container(
        height: context.screenSize.height / 2,
        width: context.screenSize.width,
        color: Colors.transparent,
        child: CustomPaint(
          painter: _ProgressBarPainter(
            _getValue(),
            widget.colors ?? BetterPlayerProgressColors(),
            introOutroSegment,
          ),
        ),
      ),
    );
  }

  IntroOutroSegment _calculateIntroOutroSegment(
    EpisodeSkipResponseEntity? episodeSkip,
    int duration,
  ) {
    return IntroOutroSegment(
      intro: IntroOutro(
        (episodeSkip?.intro.start ?? 0) / duration,
        (episodeSkip?.intro.end ?? 0) / duration,
      ),
      outro: IntroOutro(
        (episodeSkip?.outro.start ?? 0) / duration,
        (episodeSkip?.outro.end ?? 0) / duration,
      ),
    );
  }

  void _onDragStart(DragStartDetails details) {
    if (!_isProgressBarDragEnabled()) return;

    _controllerWasPlaying = _controller!.value.isPlaying;
    if (_controllerWasPlaying) {
      _controller!.pause();
    }

    widget.onDragStart?.call();
  }

  void _onDragUpdate(DragUpdateDetails details) {
    if (!_isProgressBarDragEnabled()) return;

    _seekToRelativePosition(details.globalPosition);
    widget.onDragUpdate?.call();
  }

  void _onDragEnd(DragEndDetails details) {
    if (!_isProgressBarDragEnabled()) return;

    if (_controllerWasPlaying) {
      _betterPlayerController?.play();
      _shouldPlayAfterDragEnd = true;
    }
    _setupUpdateBlockTimer();
    widget.onDragEnd?.call();
  }

  void _onTapDown(TapDownDetails details) {
    if (!_isProgressBarDragEnabled()) return;

    _seekToRelativePosition(details.globalPosition);
    _setupUpdateBlockTimer();
    widget.onTapDown?.call();
  }

  bool _isProgressBarDragEnabled() {
    return _controller!.value.initialized &&
        _betterPlayerController!.betterPlayerConfiguration.controlsConfiguration
            .enableProgressBarDrag;
  }

  void _setupUpdateBlockTimer() {
    _updateBlockTimer = Timer(const Duration(milliseconds: 1000), () {
      _lastSeek = null;
      _cancelUpdateBlockTimer();
    });
  }

  void _cancelUpdateBlockTimer() {
    _updateBlockTimer?.cancel();
    _updateBlockTimer = null;
  }

  VideoPlayerValue _getValue() {
    return _lastSeek != null
        ? _controller!.value.copyWith(position: _lastSeek)
        : _controller!.value;
  }

  void _seekToRelativePosition(Offset globalPosition) async {
    final box = context.findRenderObject() as RenderBox;
    final Offset tapPos = box.globalToLocal(globalPosition);
    final double relative = tapPos.dx / box.size.width;
    if (relative <= 0) return;

    final Duration position = _controller!.value.duration! * relative;
    _lastSeek = position;
    await _betterPlayerController!.seekTo(position);
    _onFinishedLastSeek();

    if (relative >= 1) {
      _lastSeek = _controller!.value.duration;
      await _betterPlayerController!.seekTo(_controller!.value.duration!);
      _onFinishedLastSeek();
    }
  }

  void _onFinishedLastSeek() {
    if (_shouldPlayAfterDragEnd) {
      _shouldPlayAfterDragEnd = false;
      _betterPlayerController?.play();
    }
  }
}

class IntroOutro {
  const IntroOutro(this.start, this.end);
  final double start;
  final double end;
}

class IntroOutroSegment {
  const IntroOutroSegment({required this.intro, required this.outro});
  final IntroOutro intro;
  final IntroOutro outro;
}

class _ProgressBarPainter extends CustomPainter {
  _ProgressBarPainter(this.value, this.colors, this.introOutroSegment);

  final VideoPlayerValue value;
  final BetterPlayerProgressColors colors;
  final IntroOutroSegment introOutroSegment;

  @override
  bool shouldRepaint(CustomPainter oldPainter) => true;

  @override
  void paint(Canvas canvas, Size size) {
    const height = 3.0;
    final baseOffset = Offset(0.0, size.height / 2);

    _drawBackground(canvas, size, baseOffset, height);
    if (!value.initialized) return;

    _drawBufferedRanges(canvas, size, baseOffset, height);
    _drawPlayedPart(canvas, size, baseOffset, height);
    _drawIntroOutroSections(canvas, size, baseOffset, height);
    _drawHandle(canvas, size, baseOffset, height);
  }

  void _drawBackground(
    Canvas canvas,
    Size size,
    Offset baseOffset,
    double height,
  ) {
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromPoints(baseOffset, Offset(size.width, baseOffset.dy + height)),
        const Radius.circular(4.0),
      ),
      colors.backgroundPaint,
    );
  }

  void _drawBufferedRanges(
    Canvas canvas,
    Size size,
    Offset baseOffset,
    double height,
  ) {
    for (final DurationRange range in value.buffered) {
      final double start =
          _fractionToOffset(range.startFraction(value.duration!), size.width);
      final double end =
          _fractionToOffset(range.endFraction(value.duration!), size.width);
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromPoints(
            Offset(start, baseOffset.dy),
            Offset(end, baseOffset.dy + height),
          ),
          const Radius.circular(4.0),
        ),
        colors.bufferedPaint,
      );
    }
  }

  void _drawPlayedPart(
    Canvas canvas,
    Size size,
    Offset baseOffset,
    double height,
  ) {
    final double playedPart = _fractionToOffset(
      value.position.inMilliseconds / value.duration!.inMilliseconds,
      size.width,
    );
    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromPoints(baseOffset, Offset(playedPart, baseOffset.dy + height)),
        const Radius.circular(4.0),
      ),
      colors.playedPaint,
    );
  }

  void _drawIntroOutroSections(
    Canvas canvas,
    Size size,
    Offset baseOffset,
    double height,
  ) {
    final introOutroPaint = Paint()..color = Colors.blue;
    _drawSection(
      canvas,
      size,
      baseOffset,
      height,
      introOutroSegment.intro,
      introOutroPaint,
    );
    _drawSection(
      canvas,
      size,
      baseOffset,
      height,
      introOutroSegment.outro,
      introOutroPaint,
    );
  }

  void _drawSection(
    Canvas canvas,
    Size size,
    Offset baseOffset,
    double height,
    IntroOutro section,
    Paint paint,
  ) {
    if (section.start > 0 || section.end > 0) {
      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Rect.fromPoints(
            Offset(section.start * size.width, baseOffset.dy),
            Offset(section.end * size.width, baseOffset.dy + height),
          ),
          const Radius.circular(4.0),
        ),
        paint,
      );
    }
  }

  void _drawHandle(Canvas canvas, Size size, Offset baseOffset, double height) {
    final double playedPart = _fractionToOffset(
      value.position.inMilliseconds / value.duration!.inMilliseconds,
      size.width,
    );
    canvas.drawCircle(
      Offset(playedPart, baseOffset.dy + height / 2),
      height * 2,
      colors.handlePaint,
    );
  }

  double _fractionToOffset(double fraction, double width) {
    return (fraction.isNaN || fraction > 1) ? width : fraction * width;
  }
}
