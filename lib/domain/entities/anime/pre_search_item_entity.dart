import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'pre_search_item_entity.freezed.dart';

@freezed
class PreSearchItemEntity extends BaseEntity<PreSearchItemDTO>
    with _$PreSearchItemEntity {
  const factory PreSearchItemEntity({
    required String image,
    required String path,
    required String name,
    required String status,
  }) = _PreSearchItemEntity;

  const PreSearchItemEntity._();

  @override
  PreSearchItemDTO toDTO() {
    return PreSearchItemDTO(
      image: image,
      path: path,
      name: name,
      status: status,
    );
  }

  @override
  List<Object?> get props => [image, path, name, status];
}
