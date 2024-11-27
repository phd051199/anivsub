import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'user_session_request_dto.freezed.dart';
part 'user_session_request_dto.g.dart';

@freezed
class UserSessionRequestDTO extends BaseDTO<UserSessionRequestEntity>
    with _$UserSessionRequestDTO {
  const factory UserSessionRequestDTO({
    required String username,
    required String password,
    int? expiresInMins,
  }) = _UserSessionRequestDTO;

  const UserSessionRequestDTO._();

  factory UserSessionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$UserSessionRequestDTOFromJson(json);

  @override
  List<Object?> get props => [
        username,
        password,
        expiresInMins,
      ];

  @override
  UserSessionRequestEntity toEntity() {
    return UserSessionRequestEntity(
      username: username,
      password: password,
      expiresInMins: expiresInMins,
    );
  }
}
