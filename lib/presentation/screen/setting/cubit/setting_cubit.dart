import 'package:anivsub/app/base/base.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:anivsub/shared/shared_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'setting_cubit.freezed.dart';
part 'setting_state.dart';

@injectable
class SettingCubit extends BaseCubit<SettingState> {
  SettingCubit(this._appSettingUseCase) : super(const SettingInitial()) {
    initialize();
  }

  final AppSettingUseCase _appSettingUseCase;

  void initialize() async {
    final output =
        await _appSettingUseCase.execute(const AppSettingUseCaseInput());

    safeEmit(
      SettingChanged(host: output.result?.host ?? hostCurl),
    );
  }

  void changeHost(String host) async {
    final output =
        await _appSettingUseCase.execute(const AppSettingUseCaseInput());

    await _appSettingUseCase.execute(
      AppSettingUseCaseInput(
        appSetting: output.result?.copyWith(host: host),
      ),
    );

    final isHostUpdated = getItHost != host;

    safeEmit(
      state.copyWith(
        host: host,
        isEditingHost: !state.isEditingHost,
        isHostUpdated: isHostUpdated,
      ),
    );
  }

  void toggleEditHost() {
    safeEmit(state.copyWith(isEditingHost: !state.isEditingHost));
  }
}
