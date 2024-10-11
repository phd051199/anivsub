import 'package:anivsub/data/dto/user/hair_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class HairEntity extends BaseEntity<HairDTO> {
  const HairEntity({
    this.color,
    this.type,
  });
  final String? color;
  final String? type;

  @override
  List<Object?> get props => [
        color,
        type,
      ];

  @override
  HairDTO toDTO() => HairDTO(
        color: color,
        type: type,
      );
}
