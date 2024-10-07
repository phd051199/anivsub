import 'package:bloc/bloc.dart';

part 'settings_state.dart';

class SettingsCubit extends Cubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial(isHintVisible: true));

  void toggleHintVisibility() =>
      emit(SettingsChanged(isHintVisible: !state.isHintVisible));
}
