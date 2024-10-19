import 'dart:async';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/core/utils/image_url_utils.dart';
import 'package:anivsub/core/utils/log_utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:river_player/river_player.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'video_player_cubit.freezed.dart';
part 'video_player_state.dart';

@singleton
class VideoPlayerCubit extends BaseCubit<VideoPlayerState> {
  VideoPlayerCubit(
    this._getEncryptedHlsUseCase,
    this._decryptHlsUseCase,
    this._getListEpisodeUseCase,
    this._getEpisodeSkipUsecase,
    this._appSettingsUseCases,
  ) : super(const VideoPlayerInitial());

  final GetEncryptedHlsUseCase _getEncryptedHlsUseCase;
  final DecryptHlsUseCase _decryptHlsUseCase;
  final GetListEpisodeUseCase _getListEpisodeUseCase;
  final GetEpisodeSkipUsecase _getEpisodeSkipUsecase;
  final AppSettingsUseCases _appSettingsUseCases;

  late AnimeDetailEntity _detail;
  BetterPlayerController? _playerController;
  bool _isSkipEventTriggered = false;
  bool _isNextChapterTriggered = false;
  CancelToken? _cancelToken;
  Timer? _progressTimer;

  Future<void> toggleSkipIntro() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final updatedSkipIntro = !(currentState.skipIntro ?? false);
    await _updateAppSettings(skipIntro: updatedSkipIntro);
    emit(
      currentState.copyWith(
        skipIntro: updatedSkipIntro,
        showSkipIntroText: true,
      ),
    );

    Future.delayed(const Duration(seconds: 2), () {
      if (state is VideoPlayerLoaded) {
        final updatedState = state as VideoPlayerLoaded;
        emit(updatedState.copyWith(showSkipIntroText: false));
      }
    });
  }

  Future<void> _updateAppSettings({required bool skipIntro}) async {
    final currentAppSettings = await _appSettingsUseCases.getAppSettings();
    await _appSettingsUseCases.setAppSettings(
      currentAppSettings.copyWith(skipIntro: skipIntro),
    );
  }

  void updateChapterList(List<ChapDataEntity>? chaps) {
    if (state is! VideoPlayerLoaded || chaps == null || chaps.isEmpty) return;
    emit(
      (state as VideoPlayerLoaded).copyWith(
        chaps: chaps,
      ),
    );
  }

  Future<void> initialize({
    required List<ChapDataEntity> chaps,
    required BetterPlayerController controller,
    required AnimeDetailEntity detail,
  }) async {
    if (chaps.isEmpty) {
      emit(const VideoPlayerError('No chapters available'));
      return;
    }

    try {
      emit(const VideoPlayerLoading());
      _initializeVariables(
        controller: controller,
        detail: detail,
      );
      await _initializeChapter(chaps.first, chaps);
    } catch (e) {
      emit(VideoPlayerError('Failed to initialize: $e'));
    }
  }

  void setSingleProgress({
    required double progress,
    required double duration,
  }) async {
    if (state is! VideoPlayerLoaded) return;
    final currentState = state as VideoPlayerLoaded;

    try {
      final seasonId = _detail.pathToView?.split('/')[2];
      final currentSeason = _detail.season.isEmpty
          ? ''
          : _detail.season
              .firstWhere(
                (element) =>
                    element.path ==
                    _detail.pathToView?.replaceAll('xem-phim.html', ''),
              )
              .name;

      await Supabase.instance.client.rpc(
        'set_single_progress',
        params: {
          'user_uid':
              'a3aaca2af18b3e54a02c1cfb727028935cca230889afe8b17cf4b3d9f3b66111',
          'p_name': _detail.name,
          'p_poster': ImageUrlUtils.removeHostUrlImage(_detail.poster),
          'season_id': seasonId,
          'p_season_name': currentSeason,
          'e_cur': progress,
          'e_dur': duration,
          'e_name': currentState.currentChap.name,
          'e_chap': currentState.currentChap.id,
          'gmt': 'Asia/Ho_Chi_Minh',
        },
      );
    } catch (e) {
      Log.debug('Error setting single progress: $e');
    }
  }

  void _initializeVariables({
    required BetterPlayerController controller,
    required AnimeDetailEntity detail,
  }) {
    _playerController = controller;
    _isNextChapterTriggered = false;
    _detail = detail;
    _cancelToken = CancelToken();
    _startProgressTimer();
  }

  void _startProgressTimer() {
    _progressTimer?.cancel();
    _progressTimer = Timer.periodic(const Duration(seconds: 10), (_) {
      if (_playerController?.videoPlayerController?.value.isPlaying ?? false) {
        final duration = _playerController
                ?.videoPlayerController?.value.duration?.inSeconds
                .toDouble() ??
            0;

        final progress = _playerController
                ?.videoPlayerController?.value.position.inSeconds
                .toDouble() ??
            0;
        setSingleProgress(progress: progress, duration: duration);
      }
    });
  }

  Future<void> loadChapter(ChapDataEntity chap) async {
    if (state is! VideoPlayerLoaded) return;
    final currentState = state as VideoPlayerLoaded;

    _cancelToken?.cancel('Loading new chapter');
    _cancelToken = CancelToken();

    try {
      await _pauseAndRemoveEventListener();
      emit(currentState.copyWith(currentChap: chap));

      await _loadChapterData(chap, currentState.chaps);
      await _play();

      await _loadEpisodeSkip(chap);
      _addEventListener();
      _resetFlags();
    } catch (e) {
      if (e is DioException && e.type == DioExceptionType.cancel) return;
      emit(VideoPlayerError('Failed to load chapter: $e'));
    }
  }

  void _resetFlags() {
    _isNextChapterTriggered = false;
    _isSkipEventTriggered = false;
  }

  Future<void> nextChapter() => _changeChapter(next: true);
  Future<void> previousChapter() => _changeChapter(next: false);

  Future<void> dispose() async {
    _playerController?.dispose();
    _playerController = null;
    _cancelToken?.cancel();
    _cancelToken = null;
    _progressTimer?.cancel();
  }

  Future<void> _initializeChapter(
    ChapDataEntity chap,
    List<ChapDataEntity> chaps,
  ) async {
    await _loadChapterData(chap, chaps);
    await _loadInitialConfig();
    await _play();

    await loadAdditionalData(_detail);
    await _loadEpisodeSkip(chap);
    _addEventListener();
  }

  Future<void> _loadInitialConfig() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final appSettings = await _appSettingsUseCases.getAppSettings();
    emit(
      currentState.copyWith(
        skipIntro: appSettings.skipIntro,
      ),
    );
  }

  Future<void> _loadChapterData(
    ChapDataEntity chap,
    List<ChapDataEntity> chaps,
  ) async {
    await _setupPlayerDataSource(chap);
    final nextChap = _getAdjacentChapter(chaps, chap, next: true);
    emit(_createVideoPlayerLoadedState(chaps, chap, nextChap));
  }

  Future<void> _changeChapter({required bool next}) async {
    if (_shouldSkipChangeChapter(next)) return;
    _setChangeChapterFlags(next);

    try {
      if (state is! VideoPlayerLoaded) return;
      final currentState = state as VideoPlayerLoaded;

      final adjacentChap = _getAdjacentChapter(
        currentState.chaps,
        currentState.currentChap,
        next: next,
      );
      if (adjacentChap != null) {
        await loadChapter(adjacentChap);
      } else {
        emit(
          VideoPlayerError(
            'No ${next ? "next" : "previous"} chapter available',
          ),
        );
      }
    } catch (e) {
      emit(
        VideoPlayerError(
          'Failed to load ${next ? "next" : "previous"} chapter: $e',
        ),
      );
    } finally {
      _isNextChapterTriggered = false;
    }
  }

  bool _shouldSkipChangeChapter(bool next) => _isNextChapterTriggered && next;

  void _setChangeChapterFlags(bool next) {
    _isNextChapterTriggered = next;
    _isSkipEventTriggered = false;
  }

  void _handleVideoProgress() {
    if (!_shouldHandleVideoProgress()) return;
    final currentState = state as VideoPlayerLoaded;
    final episodeSkip = currentState.episodeSkip;
    if (episodeSkip == null) return;

    final currentPosition =
        _playerController?.videoPlayerController?.value.position;
    if (currentPosition == null) return;

    _attemptSkipSection(currentPosition, episodeSkip.intro);
    _attemptSkipSection(currentPosition, episodeSkip.outro);
  }

  bool _shouldHandleVideoProgress() {
    if (state is! VideoPlayerLoaded) return false;

    final currentState = state as VideoPlayerLoaded;
    return (currentState.skipIntro ?? false) && !_isSkipEventTriggered;
  }

  void _attemptSkipSection(Duration position, InOutro section) {
    final isWithinSkipSection =
        position.inSeconds >= section.start && position.inSeconds < section.end;
    if (isWithinSkipSection && section.end > section.start) {
      _isSkipEventTriggered = true;
      _playerController?.seekTo(Duration(seconds: section.end));
      _isSkipEventTriggered = false;
    }
  }

  Future<void> _setupPlayerDataSource(ChapDataEntity chap) async {
    try {
      final chapterLink = await _getChapterLink(chap);

      if (_playerController == null) {
        throw Exception('Player controller is not initialized');
      }

      if (chapterLink.isEmpty) {
        throw Exception('Invalid chapter link: URL is empty');
      }

      await _playerController?.setupDataSource(
        BetterPlayerDataSource(BetterPlayerDataSourceType.network, chapterLink),
      );
    } catch (e) {
      if (e is DioException) {
        Log.error('DioException details: ${e.message}, ${e.response}');
        return;
      }
      emit(VideoPlayerError('Failed to set up video source: $e'));
    }
  }

  Future<String> _getChapterLink(ChapDataEntity chap) async {
    if (_cancelToken == null) {
      throw Exception('Cancel token is not initialized');
    }
    try {
      final hlsOutput = await _getEncryptedHlsUseCase.send(
        GetEncryptedHlsUseCaseInput(
          data: GetEncryptedHlsRequestEntity(
            id: chap.id,
            link: chap.hash,
            play: chap.play,
          ),
          cancelToken: _cancelToken!,
        ),
      );
      if (hlsOutput.result.link.isEmpty) {
        throw Exception('No HLS link available');
      }

      final decryptOutput = await _decryptHlsUseCase.send(
        DecryptHlsUseCaseInput(
          hash: hlsOutput.result.link.first.file,
          cancelToken: _cancelToken!,
        ),
      );
      return decryptOutput.result;
    } catch (e) {
      Log.error('Error getting chapter link: $e');
      rethrow;
    }
  }

  Future<void> loadAdditionalData(AnimeDetailEntity detail) async {
    try {
      final name = _extractAnimeNames(detail);
      if (_cancelToken == null) {
        throw Exception('Cancel token is not initialized');
      }
      final listEpisodeOutput = await _getListEpisodeUseCase.send(
        GetListEpisodeUseCaseInput(
          animeName: name,
          cancelToken: _cancelToken!,
        ),
      );
      if (state is VideoPlayerLoaded) {
        emit(
          (state as VideoPlayerLoaded)
              .copyWith(listEpisode: listEpisodeOutput.result),
        );
      }
    } catch (e) {
      Log.debug('Error loading additional data: $e');
    }
  }

  List<String> _extractAnimeNames(AnimeDetailEntity detail) {
    return [detail.name, ...detail.othername.split(',')]
        .map((name) => name.trim())
        .where((name) => name.isNotEmpty)
        .toList();
  }

  Future<void> _loadEpisodeSkip(ChapDataEntity chap) async {
    if (state is! VideoPlayerLoaded) return;
    final currentState = state as VideoPlayerLoaded;

    try {
      final currentId =
          _findMatchingEpisodeId(currentState.listEpisode?.list ?? [], chap);
      if (_cancelToken == null) {
        throw Exception('Cancel token is not initialized');
      }
      final episodeSkipOutput = await _getEpisodeSkipUsecase.send(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
          cancelToken: _cancelToken!,
        ),
      );
      emit(currentState.copyWith(episodeSkip: episodeSkipOutput.result));
    } catch (e) {
      Log.debug('Error loading episode skip: $e');
    }
  }

  ChapDataEntity? _getAdjacentChapter(
    List<ChapDataEntity> chaps,
    ChapDataEntity currentChap, {
    required bool next,
  }) {
    final int currentIndex = chaps.indexOf(currentChap);
    if (currentIndex == -1) return null;

    final int adjacentIndex = next ? currentIndex + 1 : currentIndex - 1;
    return (adjacentIndex >= 0 && adjacentIndex < chaps.length)
        ? chaps[adjacentIndex]
        : null;
  }

  String _findMatchingEpisodeId(List<Episode> episodes, ChapDataEntity chap) {
    return episodes
        .firstWhere(
          (element) =>
              element.name.extractFirstInt() == chap.name.extractFirstInt(),
          orElse: () => Episode(id: '', name: '', order: '', title: ''),
        )
        .id;
  }

  VideoPlayerLoaded _createVideoPlayerLoadedState(
    List<ChapDataEntity> chaps,
    ChapDataEntity currentChap,
    ChapDataEntity? nextChap,
  ) {
    return state is VideoPlayerLoaded
        ? (state as VideoPlayerLoaded).copyWith(
            chaps: chaps,
            currentChap: currentChap,
            nextChap: nextChap,
          )
        : VideoPlayerLoaded(
            chaps: chaps,
            currentChap: currentChap,
            nextChap: nextChap,
          );
  }

  void _onPlayEvent(BetterPlayerEvent event) async {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.finished:
        await _handleFinishedEvent();
        break;
      case BetterPlayerEventType.progress:
        _handleVideoProgress();
        break;
      default:
        break;
    }
  }

  Future<void> _handleFinishedEvent() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded || currentState.nextChap == null) {
      return;
    }

    await nextChapter();
    await _playerController?.seekTo(Duration.zero);
    await _play();
  }

  Future<void> _pauseAndRemoveEventListener() async {
    if (_playerController == null) return;

    await _playerController?.pause();
    _playerController?.removeEventsListener(_onPlayEvent);
  }

  void _addEventListener() {
    _playerController?.addEventsListener(_onPlayEvent);
  }

  Future<void> _play() async {
    if (_playerController == null) {
      throw Exception('Player controller is not initialized');
    }
    await _playerController?.play();
    _playerController?.setControlsVisibility(false);
  }

  @override
  Future<void> close() async {
    _progressTimer?.cancel();
    await dispose();
    // Does not call super.close() to keep the singleton instance
  }
}
