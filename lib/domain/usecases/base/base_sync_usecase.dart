import 'package:anivsub/domain/usecases/base/base.dart';
import 'package:anivsub/shared/config/log_config.dart';

abstract class BaseSyncUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Output> {
  const BaseSyncUseCase();

  Output execute(Input input) {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logDebug('FutureUseCase Input: $input');
      }

      final output = buildUseCase(input);

      if (LogConfig.enableLogUseCaseOutput) {
        logDebug('FutureUseCase Output: $output');
      }

      return output;
    } catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        logError('FutureUseCase Error: $e');
      }

      rethrow;
    }
  }
}
