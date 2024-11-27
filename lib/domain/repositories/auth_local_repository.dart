import '../entities/user/user_session_response_entity.dart';

abstract class AuthLocalRepository {
  Future<void> setLocalUserSession(UserSessionResponseEntity auth);
  Future<UserSessionResponseEntity> getLocalUserSession();
  Future<void> clearLocalSession();
}
