import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../shared/mixin/mixin.dart';
import 'base.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
