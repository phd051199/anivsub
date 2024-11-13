part of 'setting_cubit.dart';

@freezed
class SettingState with _$SettingState {
  const factory SettingState.initial({
    @Default(false) bool isEditingHost,
    @Default(false) bool isHostUpdated,
    String? host,
  }) = SettingInitial;

  const factory SettingState.changed({
    @Default(false) bool isEditingHost,
    @Default(false) bool isHostUpdated,
    String? host,
  }) = SettingChanged;
}
