import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'watch_state.freezed.dart';

@freezed
class WatchState extends BaseBlocState with _$WatchState {
  const factory WatchState.initial() = WatchInitial;
  const factory WatchState.loading() = WatchLoading;
  const factory WatchState.loaded() = WatchLoaded;
  const factory WatchState.error(String message) = WatchError;
}
