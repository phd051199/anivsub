part of 'watch_bloc.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial({
    @Default('') String? playingId,
  }) = WatchInitial;
  const factory WatchState.loading() = WatchLoading;
  const factory WatchState.loaded({
    required String link,
    required List<ChapDataEntity> chaps,
    String? playingId,
  }) = WatchLoaded;
  const factory WatchState.error(String message) = WatchError;
}
