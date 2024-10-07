import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings_state.freezed.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState.initial({required bool isHintVisible}) =
      SettingsInitial;
  const factory SettingsState.changed({required bool isHintVisible}) =
      SettingsChanged;
}
