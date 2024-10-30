import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'app_settings_usecase.freezed.dart';

@injectable
class AppSettingsUseCase extends BaseFutureUseCase<AppSettingsUseCaseInput,
    AppSettingsUseCaseOutput> {
  const AppSettingsUseCase(this._repository);
  final AppSettingsLocalRepository _repository;

  @protected
  @override
  Future<AppSettingsUseCaseOutput> buildUseCase(
    AppSettingsUseCaseInput input,
  ) async {
    if (input.appSettings != null) {
      await _repository.setAppSettings(input.appSettings!);
      return const AppSettingsUseCaseOutput();
    }
    final result = await _repository.getAppSettings();
    return AppSettingsUseCaseOutput(result: result);
  }
}

@freezed
class AppSettingsUseCaseInput extends BaseInput with _$AppSettingsUseCaseInput {
  const factory AppSettingsUseCaseInput({
    AppSettingsEntity? appSettings,
  }) = _AppSettingsUseCaseInput;
}

@freezed
class AppSettingsUseCaseOutput extends BaseOutput
    with _$AppSettingsUseCaseOutput {
  const factory AppSettingsUseCaseOutput({
    AppSettingsEntity? result,
  }) = _AppSettingsUseCaseOutput;
}
