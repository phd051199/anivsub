part of 'video_player_cubit.dart';

@freezed
class VideoPlayerState with _$VideoPlayerState {
  const factory VideoPlayerState.initial() = VideoPlayerInitial;
  const factory VideoPlayerState.loading() = VideoPlayerLoading;
  const factory VideoPlayerState.loaded() = VideoPlayerLoaded;
  const factory VideoPlayerState.error(String message) = VideoPlayerError;
}
