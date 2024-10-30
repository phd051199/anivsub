import 'dart:async';

import 'package:anivsub/core/base/base.dart';
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

  // Use Cases
  final GetEncryptedHlsUseCase _encryptedHlsUseCase;
  final GetEpisodeSkipUsecase _episodeSkipUseCase;
  final AppSettingsUseCase _appSettingsUseCase;
  final GetSingleProgressUseCase _getSingleProgressUseCase;
  final SetSingleProgressUseCase _setSingleProgressUseCase;

  final DHA _dha;

  // Variables
  BetterPlayerController? _playerController;
  bool _isSkipTriggered = false;
  bool _isNextEpisodeTriggered = false;
  CancelToken? _cancelToken;
  Timer? _progressUpdateTimer;

  // Methods
  Future<void> initialize({
    required List<ChapDataEntity> episodes,
    required BetterPlayerController controller,
    required AnimeDetailEntity animeDetail,
    required ListEpisodeResponseEntity? listEpisodeSkip,
    required InitialData? initialData,
  }) async {
    try {
      emit(const VideoPlayerLoading());
      _initializeComponents(controller: controller);

      await _initializeEpisode(
        episode: initialData?.initialChap ?? episodes.first,
        episodes: episodes,
        animeDetail: animeDetail,
        initialPosition: initialData?.initialPosition,
      );
    } catch (e) {
      emit(VideoPlayerError('Initialization failed: $e'));
    }
  }

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

  void _scheduleHideSkipIntroText() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    await Future.delayed(const Duration(seconds: 2));
    emit(currentState.copyWith(showSkipIntroText: false));
  }

  Future<void> _updateAppSettings({required bool skipIntro}) async {
    final settings = await _appSettingsUseCase.send(
      const AppSettingsUseCaseInput(),
    );
    await _appSettingsUseCase.send(
      AppSettingsUseCaseInput(
        appSettings: settings.result?.copyWith(skipIntro: skipIntro),
      ),
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
    emit(
      currentState.copyWith(
        chaps: episodes,
        listEpisodeSkip: listEpisodeSkip,
      ),
    );
  }

  void _initializeComponents({
    required BetterPlayerController controller,
  }) {
    _playerController = controller;
    _isNextEpisodeTriggered = false;
    _cancelToken = CancelToken();

    _startProgressUpdateTimer();
  }

  void _updateWatchProgress() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final totalDuration = _playerController
            ?.videoPlayerController?.value.duration?.inSeconds
            .toDouble() ??
        0.0;
    final currentTime = _playerController
            ?.videoPlayerController?.value.position.inSeconds
            .toDouble() ??
        0.0;

    try {
      final seasonId = currentState.animeDetail.pathToView?.parseSeasonId();
      final currentSeason = _getCurrentSeason(currentState.animeDetail);

      await _setSingleProgressUseCase.send(
        SetSingleProgressUseCaseInput(
          data: SetSingleProgressEntity(
            pName: currentState.animeDetail.name,
            pPoster: ImageUrlUtils.removeHostUrlImage(
              currentState.animeDetail.poster,
            ),
            seasonId: seasonId!,
            pSeasonName: currentSeason,
            eCur: currentTime,
            eDur: totalDuration.toInt(),
            eName: currentState.currentChap.name,
            eChap: currentState.currentChap.id,
          ),
        ),
      );
    } catch (e) {
      Log.debug('Failed to update watch progress: $e');
    }
  }

  String _getCurrentSeason(AnimeDetailEntity animeDetail) {
    if (animeDetail.season.isEmpty) {
      return '';
    }

    final cleanPath = animeDetail.pathToView?.cleanPathToView();
    final currentSeason = animeDetail.season.firstWhere(
      (season) => season.path == cleanPath,
    );

    return currentSeason.name;
  }

  void _startProgressUpdateTimer() {
    _progressUpdateTimer?.cancel();

    _progressUpdateTimer = Timer.periodic(const Duration(seconds: 15), (_) {
      if (_playerController?.videoPlayerController?.value.isPlaying ?? false) {
        _updateWatchProgress();
      }
    });
  }

  Future<void> loadEpisode(
    ChapDataEntity episode, {
    bool? next = false,
  }) async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    _cancelToken?.cancel('Loading new episode');
    _cancelToken = CancelToken();

    try {
      await _prepareForNewEpisode();
      emit(currentState.copyWith(currentChap: episode));

      await _loadEpisodeData(
        episode,
        currentState.chaps,
        currentState.animeDetail,
      );

      if (next == true) {
        await _playerController?.seekTo(Duration.zero);
      } else {
        final getSingleProgressOutput = await _getSingleProgressUseCase.send(
          GetSingleProgressUseCaseInput(
            chapId: episode.id,
            seasonId:
                currentState.animeDetail.pathToView?.parseSeasonId() ?? '',
          ),
        );
        final singleProgress = getSingleProgressOutput.result;

        if (singleProgress != null) {
          await _playerController?.seekTo(
            Duration(seconds: singleProgress.cur.toInt()),
          );
        }
      }

      await _playerController?.play();
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

  Future<void> _initializeEpisode({
    required ChapDataEntity episode,
    required List<ChapDataEntity> episodes,
    required AnimeDetailEntity animeDetail,
    num? initialPosition,
  }) async {
    await _loadEpisodeData(episode, episodes, animeDetail);
    await _loadInitialSettings();

    if (initialPosition != null) {
      await _playerController?.seekTo(
        Duration(
          seconds: initialPosition.toInt(),
        ),
      );
    }
    await _playerController?.play();

    await _loadEpisodeSkipInfo(episode);
    _setupEventListener();
  }

  Future<void> _loadInitialSettings() async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    final appSettings = await _appSettingsUseCase.send(
      const AppSettingsUseCaseInput(),
    );
    emit(currentState.copyWith(skipIntro: appSettings.result?.skipIntro));
  }

  Future<void> _loadEpisodeData(
    ChapDataEntity episode,
    List<ChapDataEntity> episodes,
    AnimeDetailEntity animeDetail,
  ) async {
    await _setupVideoSource(episode);
    final nextEpisode = _getAdjacentEpisode(episodes, episode, next: true);

    emit(
      _getVideoPlayerLoadedState(
        episodes: episodes,
        episode: episode,
        nextEpisode: nextEpisode,
        animeDetail: animeDetail,
      ),
    );
  }

  VideoPlayerState _getVideoPlayerLoadedState({
    required List<ChapDataEntity> episodes,
    required ChapDataEntity episode,
    ChapDataEntity? nextEpisode,
    required AnimeDetailEntity animeDetail,
  }) {
    final currentState = state;
    if (currentState is VideoPlayerLoaded) {
      return currentState.copyWith(
        chaps: episodes,
        currentChap: episode,
        nextChap: nextEpisode,
        animeDetail: animeDetail,
      );
    } else {
      return VideoPlayerLoaded(
        chaps: episodes,
        currentChap: episode,
        nextChap: nextEpisode,
        animeDetail: animeDetail,
      );
    }
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
        await loadEpisode(
          adjacentEpisode,
          next: next,
        );
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

      await _playerController?.setupDataSource(
        BetterPlayerDataSource(
          BetterPlayerDataSourceType.network,
          episodeLink,
        ),
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

      final hash = hlsOutput.result.link.first.file;

      return _dha.getBlobUrl(hash);
    } catch (e) {
      Log.error('Error getting episode link: $e');
      rethrow;
    }
  }

  Future<void> _loadEpisodeSkipInfo(ChapDataEntity episode) async {
    final currentState = state;
    if (currentState is! VideoPlayerLoaded) return;

    if (_cancelToken == null) {
      throw Exception('Cancel token is not initialized');
    }

    try {
      final episodes = currentState.listEpisodeSkip?.list ?? [];
      final currentId = episodes
          .firstWhere(
            (element) => _isMatchingEpisode(element, episode, episodes),
          )
          .id;

      final episodeSkipOutput = await _episodeSkipUseCase.send(
        GetEpisodeSkipUsecaseInput(
          id: currentId,
          cancelToken: _cancelToken!,
        ),
      );
      emit(
        currentState.copyWith(episodeSkip: episodeSkipOutput.result),
      );
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
    await _changeEpisode(next: true);
  }

  Future<void> _prepareForNewEpisode() async {
    if (_playerController == null) return;

    await _playerController?.pause();
    _playerController?.removeEventsListener(_onPlayerEvent);
  }

  void _setupEventListener() {
    _playerController?.addEventsListener(_onPlayerEvent);
  }

  @override
  Future<void> close() async {
    _updateWatchProgress();
    _playerController?.dispose();
    _playerController = null;
    _cancelToken?.cancel();
    _cancelToken = null;
    _progressUpdateTimer?.cancel();
  }
}
