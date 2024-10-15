part of 'watch_bloc.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial() = WatchInitial;
  const factory WatchState.loading() = WatchLoading;
  const factory WatchState.loaded({
    required List<ChapDataEntity> chaps,
    required AnimeDetailEntity detail,
    @Default(false) bool skipIntro,
    List<List<ChapDataEntity>?>? tabViewItems,
  }) = WatchLoaded;
  const factory WatchState.error(String message) = WatchError;
}
