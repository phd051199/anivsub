part of 'home_bloc.dart';

abstract class HomeEvent extends BaseBlocEvent {}

@freezed
class LoadHome extends HomeEvent with _$LoadHome {
  const factory LoadHome() = _LoadHome;
}

@freezed
class ErrorHome extends HomeEvent with _$ErrorHome {
  const factory ErrorHome() = _ErrorHome;
}
