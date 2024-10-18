part of 'video_player_cubit.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.initial() = VideoPlayerInitial;
  const factory VideoPlayerState.loading() = VideoPlayerLoading;

  const factory VideoPlayerState.loaded({
    required List<ChapDataEntity> chaps,
    required ChapDataEntity currentChap,
    ChapDataEntity? nextChap,
    ListEpisodeResponseEntity? listEpisode,
    EpisodeSkipResponseEntity? episodeSkip,
    @Default(false) bool? skipIntro,
    @Default(false) bool? showSkipIntroText,
  }) = VideoPlayerLoaded;

  const factory VideoPlayerState.error(String message) = VideoPlayerError;
}
