import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
 const factory ProfileState.loaded(UserEntity user) = ProfileLoaded;
  const factory ProfileState.error(String message) = ProfileError;
}
