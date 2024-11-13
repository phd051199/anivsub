part of 'watch_bloc.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial({
    @Default([]) List<ChapDataEntity?>? chaps,
    InitialData? initialData,
    AnimeDetailEntity? detail,
    @Default([]) List<TabViewItem?>? tabViewItems,
    @Default([]) List<CommentEntity?>? comments,
    int? totalCommentCount,
    ActorEntity? fbUser,
    @Default(false) bool isCmtLoading,
    @Default(false) bool isChapsLoading,
  }) = WatchInitial;

  const factory WatchState.loaded({
    List<ChapDataEntity?>? chaps,
    InitialData? initialData,
    required AnimeDetailEntity detail,
    List<TabViewItem?>? tabViewItems,
    List<CommentEntity?>? comments,
    int? totalCommentCount,
    ActorEntity? fbUser,
    @Default(false) bool isCmtLoading,
    @Default(false) bool isChapsLoading,
  }) = WatchLoaded;

  const factory WatchState.error({
    required String message,
    @Default([]) List<ChapDataEntity?>? chaps,
    InitialData? initialData,
    AnimeDetailEntity? detail,
    @Default([]) List<TabViewItem?>? tabViewItems,
    @Default([]) List<CommentEntity?>? comments,
    int? totalCommentCount,
    ActorEntity? fbUser,
    @Default(false) bool isCmtLoading,
    @Default(false) bool isChapsLoading,
  }) = WatchError;
}

@freezed
class InitialData with _$InitialData {
  const factory InitialData({
    ChapDataEntity? initialChap,
    num? initialPosition,
  }) = _InitialData;
}

@freezed
class TabViewItem with _$TabViewItem {
  const factory TabViewItem({
    required List<ChapDataEntity> chaps,
    required AnimeDetailEntity animeDetail,
    ListEpisodeResponseEntity? listEpisode,
  }) = _TabViewItem;
}
