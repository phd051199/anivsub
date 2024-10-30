import 'package:anivsub/domain/entities/app/app_settings_entity.dart';
import 'package:anivsub/domain/usecases/app_settings_usecase.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'theme_state.dart';

@injectable
class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit(this._appSettingsUseCase)
      : super(ThemeInitial(AppSettingsEntity.initial())) {
    loadAppSettings();
  }

  final AppSettingsUseCase _appSettingsUseCase;

  void loadAppSettings() async {
    final output = await _appSettingsUseCase.send(
      const AppSettingsUseCaseInput(),
    );
    emit(ThemeLoaded(output.result!));
  }

  void changeThemeMode(ThemeMode themeMode) async {
    final currentAppSettings = state.appSettings;
    final newAppSettings =
        currentAppSettings.copyWith(themeMode: themeMode.index);
    await _appSettingsUseCase.send(
      AppSettingsUseCaseInput(appSettings: newAppSettings),
    );
    emit(ThemeLoaded(newAppSettings));
  }

  void changeThemeColor(Color color) async {
    final currentAppSettings = state.appSettings;
    final newAppSettings = currentAppSettings.copyWith(color: color.value);
    await _appSettingsUseCase.send(
      AppSettingsUseCaseInput(appSettings: newAppSettings),
    );
    emit(ThemeLoaded(newAppSettings));
  }
}
