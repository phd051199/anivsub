import '../../../data/data_exports.dart';
import '../base_entity.dart';

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
