part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = ProfileInitial;
  const factory ProfileState.loading() = ProfileLoading;
  const factory ProfileState.loaded(UserEntity user) = ProfileLoaded;
  const factory ProfileState.error(String message) = ProfileError;
}