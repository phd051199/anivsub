part of 'watch_bloc.dart';

abstract class WatchEvent extends BaseBlocEvent {}

@freezed
class InitWatch extends WatchEvent with _$InitWatch {
  const factory InitWatch({
    required String id,
  }) = _InitWatch;
}

@freezed
class LoadWatch extends WatchEvent with _$LoadWatch {
  const factory LoadWatch({
    required String id,
  }) = _LoadWatch;
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
