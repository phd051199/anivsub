import 'package:anivsub/data/dto/user_session_request_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class UserSessionRequestEntity extends BaseEntity<UserSessionRequestDTO> {
  const UserSessionRequestEntity({
    required this.username,
    required this.password,
    this.expiresInMins,
  });
  final String username;
  final String password;
  final int? expiresInMins;

  @override
  List<Object?> get props => [username, password, expiresInMins];

  @override
  UserSessionRequestDTO toDTO() {
    return UserSessionRequestDTO(
      username: username,
      password: password,
      expiresInMins: expiresInMins,
    );
  }
}
