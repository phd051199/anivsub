part of 'video_player_cubit.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const VideoPlayerState._();

  const factory VideoPlayerState.initial({
    @Default([]) List<ChapDataEntity> chaps,
    ChapDataEntity? currentChap,
    ChapDataEntity? nextChap,
    EpisodeSkipResponseEntity? episodeSkip,
    @Default(false) bool? skipIntro,
    @Default(false) bool? showSkipIntroText,
    AnimeDetailEntity? animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
    @Default(0.0) double loadingProgress,
  }) = VideoPlayerInitial;

  const factory VideoPlayerState.loaded({
    required List<ChapDataEntity> chaps,
    required ChapDataEntity currentChap,
    ChapDataEntity? nextChap,
    EpisodeSkipResponseEntity? episodeSkip,
    @Default(false) bool? skipIntro,
    @Default(false) bool? showSkipIntroText,
    required AnimeDetailEntity animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
    @Default(0.0) double loadingProgress,
  }) = VideoPlayerLoaded;

  const factory VideoPlayerState.error({
    required String message,
    @Default([]) List<ChapDataEntity> chaps,
    ChapDataEntity? currentChap,
    ChapDataEntity? nextChap,
    EpisodeSkipResponseEntity? episodeSkip,
    @Default(false) bool? skipIntro,
    @Default(false) bool? showSkipIntroText,
    AnimeDetailEntity? animeDetail,
    ListEpisodeResponseEntity? listEpisodeSkip,
    @Default(0.0) double loadingProgress,
  }) = VideoPlayerError;
}
