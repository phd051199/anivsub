part of 'watch_bloc.dart';

abstract class WatchEvent extends BaseBlocEvent {}

@freezed
class LoadWatch extends WatchEvent with _$LoadWatch {
  const factory LoadWatch({
    required String id,
  }) = _LoadWatch;
}

@freezed
class ChangeChap extends WatchEvent with _$ChangeChap {
  const factory ChangeChap({
    required ChapDataEntity chap,
  }) = _ChangeChap;
}

@freezed
class ErrorWatch extends WatchEvent with _$ErrorWatch {
  const factory ErrorWatch() = _ErrorWatch;
}
