import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'refresh_user_session_request_dto.freezed.dart';
part 'refresh_user_session_request_dto.g.dart';

@freezed
class RefreshUserSessionRequestDTO
    extends BaseDTO<RefreshUserSessionRequestEntity>
    with _$RefreshUserSessionRequestDTO {
  const factory RefreshUserSessionRequestDTO({
    required String refreshToken,
    int? expiresInMins,
  }) = _RefreshUserSessionRequestDTO;

  const RefreshUserSessionRequestDTO._();

  factory RefreshUserSessionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshUserSessionRequestDTOFromJson(json);

  @override
  List<Object?> get props => [
        refreshToken,
        expiresInMins,
      ];

  @override
  RefreshUserSessionRequestEntity toEntity() {
    return RefreshUserSessionRequestEntity(
      refreshToken: refreshToken,
      expiresInMins: expiresInMins,
    );
  }
}
