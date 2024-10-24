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
    this._encryptedHlsUseCase,
    this._hlsDecryptionUseCase,
    this._episodeSkipUseCase,
    this._appSettingsUseCases,
  ) : super(const VideoPlayerInitial());

  final GetEncryptedHlsUseCase _encryptedHlsUseCase;
  final DecryptHlsUseCase _hlsDecryptionUseCase;
  final GetEpisodeSkipUsecase _episodeSkipUseCase;
  final AppSettingsUseCases _appSettingsUseCases;

  late AnimeDetailEntity _animeDetail;
  BetterPlayerController? _playerController;
  bool _isSkipTriggered = false;
  bool _isNextEpisodeTriggered = false;
  CancelToken? _cancelToken;
  Timer? _progressUpdateTimer;
  ListEpisodeResponseEntity? _listEpisodeSkip;

  Future<void> toggleSkipIntro() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final newSkipIntroValue = !(currentState.skipIntro ?? false);
    emit(
      currentState.copyWith(
        skipIntro: newSkipIntroValue,
        showSkipIntroText: true,
      ),
    );

    await _updateAppSettings(skipIntro: newSkipIntroValue);
    _scheduleHideSkipIntroText();
  }

  void _scheduleHideSkipIntroText() {
    Future.delayed(const Duration(seconds: 2), () {
      final currentState = state;
      if (currentState is! VideoPlayerLoaded) return;

      emit(currentState.copyWith(showSkipIntroText: false));
    });
  }

  Future<void> _updateAppSettings({required bool skipIntro}) async {
    final settings = await _appSettingsUseCases.getAppSettings();
    await _appSettingsUseCases.setAppSettings(
      settings.copyWith(skipIntro: skipIntro),
    );
  }

  void updateEpisodeList(
    List<ChapDataEntity>? episodes,
    ListEpisodeResponseEntity? listEpisodeSkip,
  ) {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded ||
        episodes == null ||
        episodes.isEmpty) {
      return;
    }
    _listEpisodeSkip = listEpisodeSkip;
    emit(currentState.copyWith(chaps: episodes));
  }

  Future<void> initialize({
    required List<ChapDataEntity> episodes,
    required BetterPlayerController controller,
    required AnimeDetailEntity animeDetail,
    required ListEpisodeResponseEntity? listEpisodeSkip,
  }) async {
    if (episodes.isEmpty) {
      emit(const VideoPlayerError('No episodes available'));
      return;
    }

    try {
      emit(const VideoPlayerLoading());
      _initializeComponents(
        controller: controller,
        animeDetail: animeDetail,
        listEpisodeSkip: listEpisodeSkip,
      );
      await _initializeEpisode(episodes.first, episodes);
    } catch (e) {
      emit(VideoPlayerError('Initialization failed: $e'));
    }
  }

  void updateWatchProgress({
    required double currentTime,
    required double totalDuration,
  }) async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    try {
      final seasonId = _animeDetail.pathToView?.split('/')[2];
      final currentSeason = _getCurrentSeason();

      await _updateSupabaseProgress(
        currentState,
        currentTime,
        totalDuration,
        seasonId,
        currentSeason,
      );
    } catch (e) {
      Log.debug('Failed to update watch progress: $e');
    }
  }

  String _getCurrentSeason() {
    return _animeDetail.season.isEmpty
        ? ''
        : _animeDetail.season
            .firstWhere(
              (element) =>
                  element.path == _animeDetail.pathToView?.cleanPathToView(),
            )
            .name;
  }

  Future<void> _updateSupabaseProgress(
    VideoPlayerLoaded currentState,
    double currentTime,
    double totalDuration,
    String? seasonId,
    String currentSeason,
  ) async {
    await Supabase.instance.client.rpc(
      'set_single_progress',
      params: {
        'user_uid':
            'a3aaca2af18b3e54a02c1cfb727028935cca230889afe8b17cf4b3d9f3b66111',
        'p_name': _animeDetail.name,
        'p_poster': ImageUrlUtils.removeHostUrlImage(_animeDetail.poster),
        'season_id': seasonId,
        'p_season_name': currentSeason,
        'e_cur': currentTime,
        'e_dur': totalDuration,
        'e_name': currentState.currentChap.name,
        'e_chap': currentState.currentChap.id,
        'gmt': 'Asia/Ho_Chi_Minh',
      },
    );
  }

  void _initializeComponents({
    required BetterPlayerController controller,
    required AnimeDetailEntity animeDetail,
    required ListEpisodeResponseEntity? listEpisodeSkip,
  }) {
    _playerController = controller;
    _isNextEpisodeTriggered = false;
    _animeDetail = animeDetail;
    _listEpisodeSkip = listEpisodeSkip;
    _cancelToken = CancelToken();
    _startProgressUpdateTimer();
  }

  void _startProgressUpdateTimer() {
    _progressUpdateTimer?.cancel();
    _progressUpdateTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      if (_playerController?.videoPlayerController?.value.isPlaying ?? false) {
        final duration = _playerController
                ?.videoPlayerController?.value.duration?.inSeconds
                .toDouble() ??
            0;

        final progress = _playerController
                ?.videoPlayerController?.value.position.inSeconds
                .toDouble() ??
            0;
        updateWatchProgress(currentTime: progress, totalDuration: duration);
      }
    });
  }

  Future<void> loadEpisode(
    ChapDataEntity episode, {
    void Function()? onLoad,
  }) async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;
    onLoad?.call();

    _cancelToken?.cancel('Loading new episode');
    _cancelToken = CancelToken();

    try {
      await _prepareForNewEpisode();
      emit(currentState.copyWith(currentChap: episode));

      await _loadEpisodeData(episode, currentState.chaps);
      await _playEpisode();

      await _loadEpisodeSkipInfo(episode);
      _setupEventListener();
      _resetEpisodeFlags();
    } catch (e) {
      if (e is DioException && e.type == DioExceptionType.cancel) return;
      emit(VideoPlayerError('Failed to load episode: $e'));
    }
  }

  void _resetEpisodeFlags() {
    _isNextEpisodeTriggered = false;
    _isSkipTriggered = false;
  }

  Future<void> nextEpisode() => _changeEpisode(next: true);
  Future<void> previousEpisode() => _changeEpisode(next: false);

  Future<void> dispose() async {
    _playerController?.dispose();
    _playerController = null;
    _cancelToken?.cancel();
    _cancelToken = null;
    _progressUpdateTimer?.cancel();
  }

  Future<void> _initializeEpisode(
    ChapDataEntity episode,
    List<ChapDataEntity> episodes,
  ) async {
    await _loadEpisodeData(episode, episodes);
    await _loadInitialSettings();
    await _playEpisode();

    await _loadEpisodeSkipInfo(episode);
    _setupEventListener();
  }

  Future<void> _loadInitialSettings() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final appSettings = await _appSettingsUseCases.getAppSettings();
    emit(currentState.copyWith(skipIntro: appSettings.skipIntro));
  }

  Future<void> _loadEpisodeData(
    ChapDataEntity episode,
    List<ChapDataEntity> episodes,
  ) async {
    await _setupVideoSource(episode);
    final nextEpisode = _getAdjacentEpisode(episodes, episode, next: true);
    emit(_createLoadedState(episodes, episode, nextEpisode));
  }

  Future<void> _changeEpisode({required bool next}) async {
    if (_shouldSkipEpisodeChange(next)) return;
    _setEpisodeChangeFlags(next);

    try {
      final currentState = state;
      if (currentState is! VideoPlayerLoaded) return;

      final adjacentEpisode = _getAdjacentEpisode(
        currentState.chaps,
        currentState.currentChap,
        next: next,
      );
      if (adjacentEpisode != null) {
        await loadEpisode(adjacentEpisode);
      } else {
        emit(
          VideoPlayerError(
            'No ${next ? "next" : "previous"} episode available',
          ),
        );
      }
    } catch (e) {
      emit(
        VideoPlayerError(
          'Failed to load ${next ? "next" : "previous"} episode: $e',
        ),
      );
    } finally {
      _isNextEpisodeTriggered = false;
    }
  }

  bool _shouldSkipEpisodeChange(bool next) => _isNextEpisodeTriggered && next;

  void _setEpisodeChangeFlags(bool next) {
    _isNextEpisodeTriggered = next;
    _isSkipTriggered = false;
  }

  void _handleVideoProgress() {
    if (!_shouldHandleProgress()) return;
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;
    final episodeSkip = currentState.episodeSkip;
    if (episodeSkip == null) return;

    final currentPosition =
        _playerController?.videoPlayerController?.value.position;
    if (currentPosition == null) return;

    _trySkipSection(currentPosition, episodeSkip.intro);
    _trySkipSection(currentPosition, episodeSkip.outro);
  }

  bool _shouldHandleProgress() {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return false;

    return (currentState.skipIntro ?? false) && !_isSkipTriggered;
  }

  void _trySkipSection(Duration position, InOutro section) {
    final isWithinSkipSection =
        position.inSeconds >= section.start && position.inSeconds < section.end;
    if (isWithinSkipSection && section.end > section.start) {
      _isSkipTriggered = true;
      _playerController?.seekTo(Duration(seconds: section.end));
      _isSkipTriggered = false;
    }
  }

  Future<void> _setupVideoSource(ChapDataEntity episode) async {
    try {
      final episodeLink = await _getEpisodeLink(episode);

      if (_playerController == null) {
        throw Exception('Player controller is not initialized');
      }

      if (episodeLink.isEmpty) {
        throw Exception('Invalid episode link: URL is empty');
      }

      await _playerController?.setupDataSource(
        BetterPlayerDataSource(BetterPlayerDataSourceType.network, episodeLink),
      );
    } catch (e) {
      if (e is DioException) {
        Log.error('DioException details: ${e.message}, ${e.response}');
        return;
      }
      emit(VideoPlayerError('Failed to set up video source: $e'));
    }
  }

  Future<String> _getEpisodeLink(ChapDataEntity episode) async {
    if (_cancelToken == null) {
      throw Exception('Cancel token is not initialized');
    }
    try {
      final hlsOutput = await _encryptedHlsUseCase.send(
        GetEncryptedHlsUseCaseInput(
          data: GetEncryptedHlsRequestEntity(
            id: episode.id,
            link: episode.hash,
            play: episode.play,
          ),
          cancelToken: _cancelToken!,
        ),
      );
      if (hlsOutput.result.link.isEmpty) {
        throw Exception('No HLS link available');
      }

      final decryptOutput = await _hlsDecryptionUseCase.send(
        DecryptHlsUseCaseInput(
          hash: hlsOutput.result.link.first.file,
          cancelToken: _cancelToken!,
        ),
      );
      return decryptOutput.result;
    } catch (e) {
      Log.error('Error getting episode link: $e');
      rethrow;
    }
  }

  Future<void> _loadEpisodeSkipInfo(ChapDataEntity episode) async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    try {
      final currentId =
          _findMatchingEpisodeId(_listEpisodeSkip?.list ?? [], episode);
      if (_cancelToken == null) {
        throw Exception('Cancel token is not initialized');
      }
      final episodeSkipOutput = await _episodeSkipUseCase.send(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
          cancelToken: _cancelToken!,
        ),
      );
      emit(currentState.copyWith(episodeSkip: episodeSkipOutput.result));
    } catch (e) {
      Log.debug('Error loading episode skip info: $e');
    }
  }

  ChapDataEntity? _getAdjacentEpisode(
    List<ChapDataEntity> episodes,
    ChapDataEntity currentEpisode, {
    required bool next,
  }) {
    final int currentIndex = episodes.indexOf(currentEpisode);
    if (currentIndex == -1) return null;

    final int adjacentIndex = next ? currentIndex + 1 : currentIndex - 1;
    return (adjacentIndex >= 0 && adjacentIndex < episodes.length)
        ? episodes[adjacentIndex]
        : null;
  }

  String _findMatchingEpisodeId(
    List<Episode> episodes,
    ChapDataEntity episode,
  ) {
    return episodes
        .firstWhere(
          (element) => _isMatchingEpisode(element, episode, episodes),
          orElse: () => throw Exception('No matching episode found'),
        )
        .id;
  }

  bool _isMatchingEpisode(
    Episode element,
    ChapDataEntity episode,
    List<Episode> episodes,
  ) {
    if (element.name.extractFirstInt() == episode.name.extractFirstInt()) {
      return true;
    }
    if (episodes.length == 1 && episode.name.isNotNumeric()) {
      return true;
    }
    return false;
  }

  VideoPlayerLoaded _createLoadedState(
    List<ChapDataEntity> episodes,
    ChapDataEntity currentEpisode,
    ChapDataEntity? nextEpisode,
  ) {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) {
      return VideoPlayerLoaded(
        chaps: episodes,
        currentChap: currentEpisode,
        nextChap: nextEpisode,
      );
    }

    return currentState.copyWith(
      chaps: episodes,
      currentChap: currentEpisode,
      nextChap: nextEpisode,
    );
  }

  void _onPlayerEvent(BetterPlayerEvent event) async {
    switch (event.betterPlayerEventType) {
      case BetterPlayerEventType.finished:
        await _handleEpisodeFinished();
        break;
      case BetterPlayerEventType.progress:
        _handleVideoProgress();
        break;
      default:
        break;
    }
  }

  Future<void> _handleEpisodeFinished() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded || currentState.nextChap == null) {
      return;
    }

    await nextEpisode();
    await _playerController?.seekTo(Duration.zero);
    await _playEpisode();
  }

  Future<void> _prepareForNewEpisode() async {
    if (_playerController == null) return;

    await _playerController?.pause();
    _playerController?.removeEventsListener(_onPlayerEvent);
  }

  void _setupEventListener() {
    _playerController?.addEventsListener(_onPlayerEvent);
  }

  Future<void> _playEpisode() async {
    if (_playerController == null) {
      return;
    }
    await _playerController?.play();
    _playerController?.setControlsVisibility(false);
  }

  @override
  Future<void> close() async {
    await dispose();
  }
}
