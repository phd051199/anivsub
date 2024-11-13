part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial() = SettingInitial;
  const factory SettingState.changed() = SettingChanged;
}
