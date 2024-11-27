import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'refresh_user_session_response_dto.freezed.dart';
part 'refresh_user_session_response_dto.g.dart';

@freezed
class RefreshUserSessionResponseDTO
    extends BaseDTO<RefreshUserSessionResponseEntity>
    with _$RefreshUserSessionResponseDTO {
  const factory RefreshUserSessionResponseDTO({
    required String? accessToken,
    required String? refreshToken,
  }) = _RefreshUserSessionResponseDTO;

  const RefreshUserSessionResponseDTO._();

  factory RefreshUserSessionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$RefreshUserSessionResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        accessToken,
        refreshToken,
      ];

  @override
  RefreshUserSessionResponseEntity toEntity() {
    return RefreshUserSessionResponseEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
    );
  }
}
