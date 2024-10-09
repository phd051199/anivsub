import 'package:anivsub/data/datasources/mapper/dto_mapper_mixin.dart';
import 'package:equatable/equatable.dart';

abstract class BaseDTO<I> extends Equatable with DTOMapperMixin<I> {
  const BaseDTO();
}
