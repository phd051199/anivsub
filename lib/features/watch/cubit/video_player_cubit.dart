import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/core/shared/string_extension.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:river_player/river_player.dart';

part 'video_player_cubit.freezed.dart';
part 'video_player_state.dart';

@singleton
class VideoPlayerCubit extends BaseCubit<VideoPlayerState> {
  VideoPlayerCubit(
    this._getEncryptedHlsUseCase,
    this._decryptHlsUseCase,
    this._getListEpisodeUseCase,
    this._getEpisodeSkipUsecase,
  ) : super(const VideoPlayerInitial());

  final GetEncryptedHlsUseCase _getEncryptedHlsUseCase;
  final DecryptHlsUseCase _decryptHlsUseCase;
  final GetListEpisodeUseCase _getListEpisodeUseCase;
  final GetEpisodeSkipUsecase _getEpisodeSkipUsecase;

  BetterPlayerController? _playerController;
  late AnimeDetailEntity _detail;

  late bool _skipIntro;
  bool _isSkipEventTriggered = false;
  bool _isNextChapterTriggered = false;

  void updateSkipIntro(bool skipIntro) => _skipIntro = skipIntro;

  void updateChapterList(List<ChapDataEntity>? chaps) {
    if (state is! VideoPlayerLoaded || chaps == null) return;
    final currentState = state as VideoPlayerLoaded;

    emit(currentState.copyWith(chaps: chaps));
  }

  Future<void> initialize({
    required List<ChapDataEntity> chaps,
    required BetterPlayerController controller,
    required AnimeDetailEntity detail,
    bool skipIntro = false,
  }) async {
    try {
      emit(const VideoPlayerLoading());
      _initializeVariables(
        controller: controller,
        skipIntro: skipIntro,
        detail: detail,
      );
      await _initializeChapter(chaps.first, chaps);
    } catch (e) {
      emit(VideoPlayerError('Failed to initialize: $e'));
    }
  }

  void _initializeVariables({
    required BetterPlayerController controller,
    required bool skipIntro,
    required AnimeDetailEntity detail,
  }) {
    _playerController = controller;
    _isNextChapterTriggered = false;
    _detail = detail;
    updateSkipIntro(skipIntro);
  }

  Future<void> loadChapter(ChapDataEntity chap) async {
    if (state is! VideoPlayerLoaded) return;
    final currentState = state as VideoPlayerLoaded;

    try {
      await _pauseAndRemoveEventListener();
      emit(currentState.copyWith(currentChap: chap));
      await _loadChapterData(chap, currentState.chaps);
      await _loadEpisodeSkip(chap);
      _addEventListener();
      _resetFlags();
      _play();
    } catch (e) {
      emit(VideoPlayerError('Failed to load chapter: $e'));
    }
  }

  void _resetFlags() {
    _isNextChapterTriggered = false;
    _isSkipEventTriggered = false;
  }

  Future<void> nextChapter() => _changeChapter(next: true);
  Future<void> previousChapter() => _changeChapter(next: false);

  void dispose() {
    _pauseAndRemoveEventListener();
    _playerController?.dispose();
    _playerController = null;
  }

  Future<void> _initializeChapter(
    ChapDataEntity chap,
    List<ChapDataEntity> chaps,
  ) async {
    await _loadChapterData(chap, chaps);
    _play();

    await _loadAdditionalData();
    await _loadEpisodeSkip(chap);
    _addEventListener();
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
    return state is VideoPlayerLoaded && _skipIntro && !_isSkipEventTriggered;
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
    final chapterLink = await _getChapterLink(chap);
    await _playerController?.setupDataSource(
      BetterPlayerDataSource(BetterPlayerDataSourceType.network, chapterLink),
    );
  }

  Future<String> _getChapterLink(ChapDataEntity chap) async {
    final hlsOutput = await _getEncryptedHlsUseCase.send(
      GetEncryptedHlsUseCaseInput(
        data: GetEncryptedHlsRequestEntity(
          id: chap.id,
          link: chap.hash,
          play: chap.play,
        ),
      ),
    );
    final decryptOutput = await _decryptHlsUseCase.send(
      DecryptHlsUseCaseInput(hash: hlsOutput.result.link.first.file),
    );
    return decryptOutput.result;
  }

  Future<void> _loadAdditionalData() async {
    try {
      final name = [_detail.name, ..._detail.othername.split(',')]
          .map((name) => name.trim())
          .where(
            (name) => name.isNotEmpty,
          )
          .toList();

      final listEpisodeOutput = await _getListEpisodeUseCase
          .send(GetListEpisodeUseCaseInput(animeName: name));
      if (state is VideoPlayerLoaded) {
        emit(
          (state as VideoPlayerLoaded)
              .copyWith(listEpisode: listEpisodeOutput.result),
        );
      }
    } catch (_) {}
  }

  Future<void> _loadEpisodeSkip(ChapDataEntity chap) async {
    if (state is! VideoPlayerLoaded) return;
    final currentState = state as VideoPlayerLoaded;

    try {
      final currentId =
          _findMatchingEpisodeId(currentState.listEpisode?.list ?? [], chap);
      final episodeSkipOutput = await _getEpisodeSkipUsecase
          .send(GetEpisodeSkipUsecaseInput(id: currentId));
      emit(currentState.copyWith(episodeSkip: episodeSkipOutput.result));
    } catch (_) {}
  }

  ChapDataEntity? _getAdjacentChapter(
    List<ChapDataEntity> chaps,
    ChapDataEntity currentChap, {
    required bool next,
  }) {
    final int currentIndex = chaps.indexOf(currentChap);
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
    await nextChapter();
    await _playerController?.seekTo(const Duration(seconds: 0));
    _play();
  }

  Future<void> _pauseAndRemoveEventListener() async {
    if (_playerController == null) return;

    await _playerController?.pause();
    _playerController?.removeEventsListener(_onPlayEvent);
  }

  void _addEventListener() {
    _playerController?.addEventsListener(_onPlayEvent);
  }

  void _play() async {
    await _playerController?.play();
    _playerController?.setControlsVisibility(false);
  }

  @override
  Future<void> close() {
    dispose();
    return super.close();
  }
}
