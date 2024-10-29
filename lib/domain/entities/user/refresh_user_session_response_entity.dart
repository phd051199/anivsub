import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class RefreshUserSessionResponseEntity
    extends BaseEntity<RefreshUserSessionResponseDTO> {
  const RefreshUserSessionResponseEntity({
    this.accessToken,
    this.refreshToken,
  });
  final String? accessToken;
  final String? refreshToken;

  @override
  List<Object?> get props => [accessToken, refreshToken];

  @override
  RefreshUserSessionResponseDTO toDTO() => RefreshUserSessionResponseDTO(
        accessToken: accessToken,
        refreshToken: refreshToken,
      );
}
