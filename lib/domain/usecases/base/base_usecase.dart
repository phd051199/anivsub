import 'package:anivsub/core/mixin/log.dart';
import 'package:anivsub/domain/usecases/base/base.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class BaseUseCase<Input extends BaseInput, Output> with LogMixin {
  const BaseUseCase();

  @protected
  Output buildUseCase(Input input);
}
