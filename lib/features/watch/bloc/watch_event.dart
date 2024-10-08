part of 'watch_bloc.dart';

abstract class WatchEvent extends BaseBlocEvent {}

@freezed
class LoadWatch extends WatchEvent with _$LoadWatch {
  const factory LoadWatch() = _LoadWatch;
}

@freezed
class ErrorWatch extends WatchEvent with _$ErrorWatch {
  const factory ErrorWatch() = _ErrorWatch;
}
