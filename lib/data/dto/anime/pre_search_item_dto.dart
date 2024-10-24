import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pre_search_item_dto.freezed.dart';
part 'pre_search_item_dto.g.dart';

@freezed
class PreSearchItemDTO extends BaseDTO<PreSearchItemEntity>
    with _$PreSearchItemDTO {
  const factory PreSearchItemDTO({
    required String image,
    required String path,
    required String name,
    required String status,
  }) = _PreSearchItemDTO;

  const PreSearchItemDTO._();

  factory PreSearchItemDTO.fromJson(Map<String, dynamic> json) =>
      _$PreSearchItemDTOFromJson(json);

  @override
  PreSearchItemEntity toEntity() {
    return PreSearchItemEntity(
      image: image,
      path: path,
      name: name,
      status: status,
    );
  }

  @override
  List<Object?> get props => [image, path, name, status];
}
