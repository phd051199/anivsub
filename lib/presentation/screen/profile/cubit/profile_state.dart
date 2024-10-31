part of 'profile_cubit.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial({
    UserSessionResponseEntity? user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = ProfileInitial;

  const factory ProfileState.loaded({
    required UserSessionResponseEntity user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = ProfileLoaded;

  const factory ProfileState.error({
    required String message,
    UserSessionResponseEntity? user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = ProfileError;
}
