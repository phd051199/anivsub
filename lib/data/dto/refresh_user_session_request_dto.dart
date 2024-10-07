import 'package:anivsub/data/dto/base_dto.dart';
import 'package:anivsub/domain/entities/refresh_user_session_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'refresh_user_session_request_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class RefreshUserSessionRequestDTO
    extends BaseDTO<RefreshUserSessionRequestEntity> {
  final String refreshToken;
  final int? expiresInMins;

  const RefreshUserSessionRequestDTO({
    required this.refreshToken,
    this.expiresInMins,
  });

  @override
  RefreshUserSessionRequestEntity toEntity() => RefreshUserSessionRequestEntity(
        refreshToken: refreshToken,
        expiresInMins: expiresInMins,
      );

  @override
  List<Object?> get props => [refreshToken, expiresInMins];

  Map<String, dynamic> toJson() => _$RefreshUserSessionRequestDTOToJson(this);
}
