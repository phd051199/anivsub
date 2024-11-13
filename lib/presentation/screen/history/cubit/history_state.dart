part of 'history_cubit.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial({
    UserSessionResponseEntity? user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = HistoryInitial;

  const factory HistoryState.loaded({
    required UserSessionResponseEntity user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = HistoryLoaded;

  const factory HistoryState.error({
    required String message,
    UserSessionResponseEntity? user,
    List<QueryHistoryEntity?>? queryHistory,
  }) = HistoryError;
}
