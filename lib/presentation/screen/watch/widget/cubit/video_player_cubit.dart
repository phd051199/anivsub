import 'dart:async';

import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/di/shared_export.dart';
import 'package:anivsub/core/extension/string_extension.dart';
import 'package:anivsub/core/plugin/plugin.dart';
import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/presentation/screen/watch/watch.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:river_player/river_player.dart';

part 'video_player_cubit.freezed.dart';
part 'video_player_state.dart';

@singleton
class VideoPlayerCubit extends BaseCubit<VideoPlayerState> {
  VideoPlayerCubit(
    this._encryptedHlsUseCase,
    this._episodeSkipUseCase,
    this._appSettingsUseCase,
    this._getSingleProgressUseCase,
    this._setSingleProgressUseCase,
    this._dha,
  ) : super(const VideoPlayerInitial());

  final GetEncryptedHlsUseCase _encryptedHlsUseCase;
  final GetEpisodeSkipUsecase _episodeSkipUseCase;
  final AppSettingsUseCase _appSettingsUseCase;
  final GetSingleProgressUseCase _getSingleProgressUseCase;
  final SetSingleProgressUseCase _setSingleProgressUseCase;
  final DHA _dha;

  BetterPlayerController? playerController;
  Timer? _progressUpdateTimer;
  Timer? _skipIntroDebounceTimer;
  CancelToken? cancelToken;

  bool _isSkipTriggered = false;
  bool _isNextEpisodeTriggered = false;

  Future<void> initialize({
    required List<ChapDataEntity> episodes,
    required BetterPlayerController controller,
    required AnimeDetailEntity animeDetail,
    required ListEpisodeResponseEntity? listEpisodeSkip,
    required InitialData? initialData,
  }) async {
    try {
      _initializeComponents(controller: controller);

      await _initializeEpisode(
        episode:
            initialData?.initialChap ?? state.currentChap ?? episodes.first,
        episodes: episodes,
        animeDetail: animeDetail,
        initialPosition: initialData?.initialPosition,
        listEpisodeSkip: listEpisodeSkip,
      );
    } catch (e) {
      log.e('Initialization failed: $e');
    }
  }

  Future<void> toggleSkipIntro() async {
    if (state is! VideoPlayerLoaded) return;

    final newSkipIntroValue = !(state.skipIntro ?? false);
    emit(
      state.copyWith(
        skipIntro: newSkipIntroValue,
        showSkipIntroText: true,
      ),
    );

    _skipIntroDebounceTimer?.cancel();
    _skipIntroDebounceTimer = Timer(
      const Duration(seconds: 1),
      () => _updateAppSettings(skipIntro: newSkipIntroValue),
    );

    _scheduleHideSkipIntroText();
  }

  void updateEpisodeList(
    List<ChapDataEntity> episodes,
    ListEpisodeResponseEntity? listEpisodeSkip,
  ) {
    if (state is! VideoPlayerLoaded || episodes.isEmpty) return;
    emit(
      state.copyWith(
        chaps: episodes,
        listEpisodeSkip: listEpisodeSkip,
      ),
    );
  }

  Future<void> loadEpisode(ChapDataEntity episode, {bool? next = false}) async {
    if (state is! VideoPlayerLoaded) return;

    cancelToken?.cancel('Loading new episode');
    cancelToken = CancelToken();

    try {
      await _prepareForNewEpisode();
      await _loadEpisodeData(
        episode,
        state.chaps,
        state.animeDetail!,
        state.listEpisodeSkip,
      );

      await _handleEpisodePosition(episode, next);
      await _playEpisode();
      await _loadEpisodeSkipInfo(episode);

      _setupEventListener();
      _resetEpisodeFlags();
    } catch (e) {
      if (e is DioException && e.type == DioExceptionType.cancel) return;
      log.e('Failed to load episode: $e');
    }
  }

  void updateCurrentChap(ChapDataEntity? chap) {
    if (chap == null) return;
    emit(state.copyWith(currentChap: chap));
  }

  @override
  Future<void> close() async {
    _resetState();
    _cleanupResources();
  }

  void _initializeComponents({required BetterPlayerController controller}) {
    playerController = controller;
    _isNextEpisodeTriggered = false;
    cancelToken = CancelToken();
    _startProgressUpdateTimer();
  }

  Future<void> _handleEpisodePosition(
    ChapDataEntity episode,
    bool? next,
  ) async {
    if (next == true) {
      await playerController?.seekTo(Duration.zero);
      return;
    }

    final progress = await _getSingleProgressUseCase.execute(
      GetSingleProgressUseCaseInput(
        chapId: episode.id,
        seasonId: state.animeDetail!.pathToView?.parseSeasonId() ?? '',
      ),
    );

    if (progress.result?.cur != null) {
      await playerController?.seekTo(
        Duration(seconds: progress.result!.cur!.toInt()),
      );
    }
  }

  void _cleanupResources() {
    playerController?.dispose();
    playerController = null;
    cancelToken?.cancel();
    cancelToken = null;
    _progressUpdateTimer?.cancel();
    _skipIntroDebounceTimer?.cancel();
  }

  void _scheduleHideSkipIntroText() {
    Future.delayed(
      const Duration(seconds: 2),
      () => emit(state.copyWith(showSkipIntroText: false)),
    );
  }

  Future<void> _updateAppSettings({required bool skipIntro}) async {
    final settings = await _appSettingsUseCase.execute(
      const AppSettingsUseCaseInput(),
    );
    await _appSettingsUseCase.execute(
      AppSettingsUseCaseInput(
        appSettings: settings.result?.copyWith(skipIntro: skipIntro),
      ),
    );
  }

  void _updateWatchProgress() async {
    if (state is! VideoPlayerLoaded) return;

    final totalDuration = playerController
            ?.videoPlayerController?.value.duration?.inSeconds
            .toDouble() ??
        0.0;
    final currentTime = playerController
            ?.videoPlayerController?.value.position.inSeconds
            .toDouble() ??
        0.0;

    try {
      final seasonId = state.animeDetail!.pathToView?.parseSeasonId();
      final currentSeason = _getCurrentSeason(state.animeDetail!);

      await _setSingleProgressUseCase.execute(
        SetSingleProgressUseCaseInput(
          data: SetSingleProgressEntity(
            pName: state.animeDetail!.name,
            pPoster: ImageUrlUtils.removeHostUrlImage(
              state.animeDetail!.poster,
            ),
            seasonId: seasonId!,
            pSeasonName: currentSeason,
            eCur: currentTime,
            eDur: totalDuration.toInt(),
            eName: state.currentChap!.name,
            eChap: state.currentChap!.id,
          ),
        ),
      );
    } catch (e) {
      log.e('Failed to update watch progress: $e');
    }
  }

  String _getCurrentSeason(AnimeDetailEntity animeDetail) {
    if (animeDetail.season.isEmpty) return '';

    final cleanPath = animeDetail.pathToView?.cleanPathToView();
    return animeDetail.season
        .firstWhere((season) => season.path == cleanPath)
        .name;
  }

  void _startProgressUpdateTimer() {
    _progressUpdateTimer?.cancel();
    _progressUpdateTimer = Timer.periodic(
      const Duration(seconds: 15),
      (_) {
        if (playerController?.videoPlayerController?.value.isPlaying ?? false) {
          _updateWatchProgress();
        }
      },
    );
  }

  Future<void> _playEpisode() async {
    await playerController?.play();
    playerController?.setControlsVisibility(false);
  }

  void _resetEpisodeFlags() {
    _isNextEpisodeTriggered = false;
    _isSkipTriggered = false;
  }

  Future<void> _initializeEpisode({
    required ChapDataEntity episode,
    required List<ChapDataEntity> episodes,
    required AnimeDetailEntity animeDetail,
    num? initialPosition,
    ListEpisodeResponseEntity? listEpisodeSkip,
  }) async {
    await _loadEpisodeData(episode, episodes, animeDetail, listEpisodeSkip);
    await _loadInitialSettings();

    if (initialPosition != null) {
      await playerController
          ?.seekTo(Duration(seconds: initialPosition.toInt()));
    }

    await _playEpisode();
    await _loadEpisodeSkipInfo(episode);
    _setupEventListener();
  }

  Future<void> _loadInitialSettings() async {
    if (state is! VideoPlayerLoaded) return;

    final appSettings = await _appSettingsUseCase.execute(
      const AppSettingsUseCaseInput(),
    );
    emit(state.copyWith(skipIntro: appSettings.result?.skipIntro));
  }

  Future<void> _loadEpisodeData(
    ChapDataEntity episode,
    List<ChapDataEntity> episodes,
    AnimeDetailEntity animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
  ) async {
    await _setupVideoSource(episode);
    final nextEpisode = _getAdjacentEpisode(episodes, episode, next: true);

    emit(
      _getVideoPlayerLoadedState(
        episodes: episodes,
        episode: episode,
        nextEpisode: nextEpisode,
        animeDetail: animeDetail,
        listEpisodeSkip: listEpisodeSkip,
      ),
    );
  }

  VideoPlayerState _getVideoPlayerLoadedState({
    required List<ChapDataEntity> episodes,
    required ChapDataEntity episode,
    ChapDataEntity? nextEpisode,
    required AnimeDetailEntity animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
  }) {
    if (state is VideoPlayerLoaded) {
      return state.copyWith(
        chaps: episodes,
        currentChap: episode,
        nextChap: nextEpisode,
        animeDetail: animeDetail,
        listEpisodeSkip: listEpisodeSkip,
      );
    }

    return VideoPlayerLoaded(
      chaps: episodes,
      currentChap: episode,
      nextChap: nextEpisode,
      animeDetail: animeDetail,
      listEpisodeSkip: listEpisodeSkip,
    );
  }

  Future<void> _changeEpisode({required bool next}) async {
    if (_shouldSkipEpisodeChange(next)) return;
    _setEpisodeChangeFlags(next);

    try {
      if (state is! VideoPlayerLoaded) return;

      final adjacentEpisode = _getAdjacentEpisode(
        state.chaps,
        state.currentChap!,
        next: next,
      );

      if (adjacentEpisode != null) {
        await loadEpisode(adjacentEpisode, next: next);
      } else {
        log.e('No ${next ? "next" : "previous"} episode available');
      }
    } catch (e) {
      log.e('Failed to load ${next ? "next" : "previous"} episode: $e');
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
    if (state is! VideoPlayerLoaded) return;

    final episodeSkip = state.episodeSkip;
    if (episodeSkip == null) return;

    final currentPosition =
        playerController?.videoPlayerController?.value.position;
    if (currentPosition == null) return;

    _trySkipSection(currentPosition, episodeSkip.intro);
    _trySkipSection(currentPosition, episodeSkip.outro);
  }

  bool _shouldHandleProgress() {
    if (state is! VideoPlayerLoaded) return false;
    return (state.skipIntro ?? false) && !_isSkipTriggered;
  }

  void _trySkipSection(Duration position, InOutro section) {
    if (position.inSeconds >= section.start &&
        position.inSeconds < section.end &&
        section.end > section.start) {
      _isSkipTriggered = true;
      playerController?.seekTo(Duration(seconds: section.end));
      _isSkipTriggered = false;
    }
  }

  Future<void> _setupVideoSource(ChapDataEntity episode) async {
    try {
      final episodeLink = await _getEpisodeLink(episode);
      await playerController?.setupDataSource(
        BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          episodeLink,
        ),
      );
    } catch (e) {
      if (e is DioException) {
        log.e('DioException details: ${e.message}, ${e.response}');
        return;
      }
      log.e('Failed to set up video source: $e');
    }
  }

  Future<String> _getEpisodeLink(ChapDataEntity episode) async {
    if (cancelToken == null) {
      throw Exception('Cancel token is not initialized');
    }

    try {
      final hlsOutput = await _encryptedHlsUseCase.execute(
        GetEncryptedHlsUseCaseInput(
          data: GetEncryptedHlsRequestEntity(
            id: episode.id,
            link: episode.hash,
            play: episode.play,
          ),
          cancelToken: cancelToken!,
        ),
      );

      if (hlsOutput.result.link.isEmpty) {
        throw Exception('No HLS link available');
      }

      return _dha.getBlobUrl(hlsOutput.result.link.first.file);
    } catch (e) {
      log.e('Error getting episode link: $e');
      rethrow;
    }
  }

  Future<void> _loadEpisodeSkipInfo(ChapDataEntity episode) async {
    if (state is! VideoPlayerLoaded) return;

    try {
      final episodes = state.listEpisodeSkip?.list ?? [];
      final currentId = episodes
          .firstWhere(
            (element) => _isMatchingEpisode(element, episode, episodes),
          )
          .id;

      final episodeSkipOutput = await _episodeSkipUseCase.execute(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
          cancelToken: cancelToken!,
        ),
      );

      emit(state.copyWith(episodeSkip: episodeSkipOutput.result));
    } catch (e) {
      log.e('Error loading episode skip info: $e');
    }
  }

  ChapDataEntity? _getAdjacentEpisode(
    List<ChapDataEntity> episodes,
    ChapDataEntity currentEpisode, {
    required bool next,
  }) {
    final currentIndex = episodes.indexOf(currentEpisode);
    if (currentIndex == -1) return null;

    final adjacentIndex = next ? currentIndex + 1 : currentIndex - 1;
    return (adjacentIndex >= 0 && adjacentIndex < episodes.length)
        ? episodes[adjacentIndex]
        : null;
  }

  bool _isMatchingEpisode(
    Episode element,
    ChapDataEntity episode,
    List<Episode> episodes,
  ) {
    if (element.name.extractFirstInt() == episode.name.extractFirstInt()) {
      return true;
    }
    return episodes.length == 1 && episode.name.isNotNumeric();
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
    if (state is! VideoPlayerLoaded || state.nextChap == null) return;
    await _changeEpisode(next: true);
  }

  Future<void> _prepareForNewEpisode() async {
    if (playerController == null) return;
    await playerController?.pause();
    playerController?.removeEventsListener(_onPlayerEvent);
  }

  void _setupEventListener() {
    playerController?.addEventsListener(_onPlayerEvent);
  }

  void _resetState() {
    emit(
      state.copyWith(
        chaps: [],
        currentChap: ChapDataEntity.mockup(),
      ),
    );
  }
}
