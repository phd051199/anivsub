part of 'theme_cubit.dart';

sealed class ThemeState extends Equatable {
  const ThemeState(this.appSetting);

  final AppSettingEntity appSetting;

  @override
  List<Object> get props => [appSetting];
}

class ThemeInitial extends ThemeState {
  const ThemeInitial(super.appSetting);
}

class ThemeLoaded extends ThemeState {
  const ThemeLoaded(super.appSetting);
}
