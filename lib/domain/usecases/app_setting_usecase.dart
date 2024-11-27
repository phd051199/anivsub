import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain_exports.dart';

part 'app_setting_usecase.freezed.dart';

@injectable
class AppSettingUseCase
    extends BaseFutureUseCase<AppSettingUseCaseInput, AppSettingUseCaseOutput> {
  const AppSettingUseCase(this._repository);
  final AppSettingLocalRepository _repository;

  @protected
  @override
  Future<AppSettingUseCaseOutput> buildUseCase(
    AppSettingUseCaseInput input,
  ) async {
    if (input.appSetting != null) {
      await _repository.setAppSetting(input.appSetting!);
      return const AppSettingUseCaseOutput();
    }
    final result = await _repository.getAppSetting();
    return AppSettingUseCaseOutput(result: result);
  }
}

@freezed
class AppSettingUseCaseInput extends BaseInput with _$AppSettingUseCaseInput {
  const factory AppSettingUseCaseInput({
    AppSettingEntity? appSetting,
  }) = _AppSettingUseCaseInput;
}

@freezed
class AppSettingUseCaseOutput extends BaseOutput
    with _$AppSettingUseCaseOutput {
  const factory AppSettingUseCaseOutput({
    AppSettingEntity? result,
  }) = _AppSettingUseCaseOutput;
}
