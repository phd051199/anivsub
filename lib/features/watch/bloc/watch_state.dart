part of 'watch_bloc.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial() = WatchInitial;
  const factory WatchState.loading() = WatchLoading;
  const factory WatchState.loaded({
    List<ChapDataEntity>? chaps,
    required AnimeDetailEntity detail,
    List<TabViewItem?>? tabViewItems,
    List<CommentEntity>? comments,
    int? totalCommentCount,
    FBUser? fbUser,
  }) = WatchLoaded;
  const factory WatchState.error(String message) = WatchError;
}
