part of 'watch_bloc.dart';

abstract class WatchEvent extends BaseBlocEvent {}

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
class GetFbCookies extends WatchEvent with _$GetFbCookies {
  const factory GetFbCookies() = _GetFbCookies;
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
  }) = _ChangeEpisode;
}

@freezed
class ErrorWatch extends WatchEvent with _$ErrorWatch {
  const factory ErrorWatch() = _ErrorWatch;
}
