part of 'settings_cubit.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({required bool isHintVisible}) =
      SettingsInitial;
  const factory SettingsState.changed({required bool isHintVisible}) =
      SettingsChanged;
}
