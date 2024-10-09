part of 'chewie_player_cubit.dart';

@freezed
class ChewiePlayerState with _$ChewiePlayerState {
  const factory ChewiePlayerState.initial() = ChewiePlayerInitial;
  const factory ChewiePlayerState.loading() = ChewiePlayerLoading;
  const factory ChewiePlayerState.loaded() = ChewiePlayerLoaded;
  const factory ChewiePlayerState.error(String message) = ChewiePlayerError;
}
