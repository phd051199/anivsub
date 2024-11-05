part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({required bool isHintVisible}) =
      SettingInitial;
  const factory SettingState.changed({required bool isHintVisible}) =
      SettingChanged;
}
