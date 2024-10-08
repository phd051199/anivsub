import 'package:anivsub/core/shared/log_config.dart';
import 'package:anivsub/domain/usecases/base/base.dart';

abstract class BaseFutureUseCase<Input extends BaseInput,
    Output extends BaseOutput> extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> send(Input input) async {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        logDebug('FutureUseCase Input: $input');
      }

      final output = await buildUseCase(input);

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
