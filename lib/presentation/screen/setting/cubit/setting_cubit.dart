import 'package:anivsub/shared/base/base.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'setting_cubit.freezed.dart';
part 'setting_state.dart';

@injectable
class SettingCubit extends BaseCubit<SettingState> {
  SettingCubit() : super(const SettingInitial(isHintVisible: true));

  void toggleHintVisibility() =>
      safeEmit(SettingChanged(isHintVisible: !state.isHintVisible));
}
