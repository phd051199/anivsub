import 'package:anivsub/core/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_cubit.freezed.dart';
part 'settings_state.dart';

@injectable
class SettingsCubit extends BaseCubit<SettingsState> {
  SettingsCubit() : super(SettingsInitial(isHintVisible: true));

  void toggleHintVisibility() =>
      emit(SettingsChanged(isHintVisible: !state.isHintVisible));
}
