import 'package:equatable/equatable.dart';

import '../datasources/mapper/dto_mapper_mixin.dart';

abstract class BaseDTO<I> extends Equatable with DTOMapperMixin<I> {
  const BaseDTO();
}
