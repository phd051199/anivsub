part of 'watch_bloc.dart';

sealed class WatchEvent extends BaseBlocEvent {}

@freezed
class InitWatch extends WatchEvent with _$InitWatch {
  const factory InitWatch({
    required String id,
    FBCommentPlugin? fbCommentPlugin,
  }) = _InitWatch;
}

@freezed
class LoadWatch extends WatchEvent with _$LoadWatch {
  const factory LoadWatch({
    required String id,
  }) = _LoadWatch;
}

@freezed
class LoadComments extends WatchEvent with _$LoadComments {
  const factory LoadComments({
    required String id,
  }) = _LoadComments;
}

@freezed
class PostComment extends WatchEvent with _$PostComment {
  const factory PostComment({
    required String comment,
  }) = _PostComment;
}

@freezed
class DeleteComment extends WatchEvent with _$DeleteComment {
  const factory DeleteComment({
    required String commentId,
  }) = _DeleteComment;
}

@freezed
class LikeComment extends WatchEvent with _$LikeComment {
  const factory LikeComment({
    required String commentId,
  }) = _LikeComment;
}

@freezed
class LoadMoreComments extends WatchEvent with _$LoadMoreComments {
  const factory LoadMoreComments() = _LoadMoreComments;
}

@freezed
class GetFbCookies extends WatchEvent with _$GetFbCookies {
  const factory GetFbCookies() = _GetFbCookies;
}

@freezed
class LogoutFb extends WatchEvent with _$LogoutFb {
  const factory LogoutFb() = _LogoutFb;
}

@freezed
class ChangeSeasonTab extends WatchEvent with _$ChangeSeasonTab {
  const factory ChangeSeasonTab({
    required String id,
  }) = _ChangeSeasonTab;
}

@freezed
class ChangeEpisode extends WatchEvent with _$ChangeEpisode {
  const factory ChangeEpisode({
    required AnimeDetailEntity animeDetail,
    required List<ChapDataEntity> chaps,
  }) = _ChangeEpisode;
}

@freezed
class ErrorWatch extends WatchEvent with _$ErrorWatch {
  const factory ErrorWatch() = _ErrorWatch;
}
