import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';

abstract class AuthLocalRepository {
  Future<void> setLocalUserSession(UserSessionResponseEntity auth);
  Future<ResponseWrapper<UserSessionResponseEntity>> getLocalUserSession();
  Future<void> clearLocalSession();
}
