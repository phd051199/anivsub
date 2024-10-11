import 'package:anivsub/data/dto/user/coordinates_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class CoordinatesEntity extends BaseEntity<CoordinatesDTO> {
  const CoordinatesEntity({
    this.lat,
    this.lng,
  });
  final double? lat;
  final double? lng;

  @override
  List<Object?> get props => [
        lat,
        lng,
      ];

  @override
  CoordinatesDTO toDTO() => CoordinatesDTO(
        lat: lat,
        lng: lng,
      );
}
