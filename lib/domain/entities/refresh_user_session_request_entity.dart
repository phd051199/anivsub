import 'package:anivsub/data/dto/refresh_user_session_request_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class RefreshUserSessionRequestEntity
    extends BaseEntity<RefreshUserSessionRequestDTO> {
  const RefreshUserSessionRequestEntity({
    required this.refreshToken,
    this.expiresInMins,
  });
  final String refreshToken;
  final int? expiresInMins;

  @override
  List<Object?> get props => [refreshToken, expiresInMins];

  @override
  RefreshUserSessionRequestDTO toDTO() {
    return RefreshUserSessionRequestDTO(
      refreshToken: refreshToken,
      expiresInMins: expiresInMins,
    );
  }
}
