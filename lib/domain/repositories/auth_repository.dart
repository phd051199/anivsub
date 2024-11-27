import '../entities/user/refresh_user_session_request_entity.dart';
import '../entities/user/refresh_user_session_response_entity.dart';
import '../entities/user/user_entity.dart';
import '../entities/user/user_session_request_entity.dart';
import '../entities/user/user_session_response_entity.dart';

abstract class AuthRepository {
  Future<UserSessionResponseEntity> getUserSession(
    UserSessionRequestEntity authRequestEntity,
  );
  Future<RefreshUserSessionResponseEntity> refreshUserSession(
    RefreshUserSessionRequestEntity refreshTokenRequestEntity,
  );
  Future<UserEntity> getUser();
}
