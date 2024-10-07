import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.loaded({required UserSessionResponseEntity user}) =
      HomeLoaded;
  const factory HomeState.error(String message) = HomeError;
}
