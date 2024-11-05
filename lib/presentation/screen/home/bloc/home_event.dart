part of 'home_bloc.dart';

sealed class HomeEvent extends BaseBlocEvent {}

@freezed
class LoadHome extends HomeEvent with _$LoadHome {
  const factory LoadHome() = _LoadHome;
}
