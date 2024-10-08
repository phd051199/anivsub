part of 'home_bloc.dart';

@freezed
class HomeState extends BaseBlocState with _$HomeState {
  const factory HomeState.initial({HomeDataCategoriesEntity? homeData}) =
      HomeInitial;
  const factory HomeState.loading() = HomeLoading;
  const factory HomeState.loaded({required HomeDataCategoriesEntity homeData}) =
      HomeLoaded;
  const factory HomeState.error(String message) = HomeError;
}
