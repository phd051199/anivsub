import 'package:anivsub/domain/entities/app/app_setting_entity.dart';
import 'package:anivsub/domain/usecases/app_setting_usecase.dart';
import 'package:anivsub/shared/extension/extension.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this._appSettingUseCase)
      : super(ThemeInitial(AppSettingEntity.initial())) {
    loadAppSetting();
  }

  final AppSettingUseCase _appSettingUseCase;

  void loadAppSetting() async {
    final output = await _appSettingUseCase.execute(
      const AppSettingUseCaseInput(),
    );
    safeEmit(ThemeLoaded(output.result!));
  }

  void changeThemeMode(ThemeMode themeMode) async {
    final currentAppSetting = state.appSetting;
    final newAppSetting =
        currentAppSetting.copyWith(themeMode: themeMode.index);
    await _appSettingUseCase.execute(
      AppSettingUseCaseInput(appSetting: newAppSetting),
    );
    safeEmit(ThemeLoaded(newAppSetting));
  }

  void changeThemeColor(Color color) async {
    final currentAppSetting = state.appSetting;
    final newAppSetting = currentAppSetting.copyWith(color: color.value);
    await _appSettingUseCase.execute(
      AppSettingUseCaseInput(appSetting: newAppSetting),
    );
    safeEmit(ThemeLoaded(newAppSetting));
  }
}
