import 'package:anivsub/data/datasources/mapper/entity_mapper_mixin.dart';
import 'package:equatable/equatable.dart';

abstract class BaseEntity<I> extends Equatable with EntityMapperMixin<I> {
  const BaseEntity();
}
