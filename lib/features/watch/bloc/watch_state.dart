part of 'watch_bloc.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial() = WatchInitial;
  const factory WatchState.loading() = WatchLoading;
  const factory WatchState.loaded({
    required String link,
    required List<ChapDataEntity> chaps,
    @Default('') String poster,
    @Default('') String? playingId,
    @Default('1') String? playingChap,
    ListEpisodeResponseEntity? listEpisode,
    EpisodeSkipResponseEntity? episodeSkip,
    @Default(false) bool skipIntro,
    @Default(false) bool chapLoading,
  }) = WatchLoaded;
  const factory WatchState.error(String message) = WatchError;
}
