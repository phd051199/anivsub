import 'package:anivsub/core/base/base.dart';
import 'package:anivsub/features/settings/cubit/settings_state.dart';

class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial(isHintVisible: true));

  void toggleHintVisibility() =>
      emit(SettingsChanged(isHintVisible: !state.isHintVisible));
}
