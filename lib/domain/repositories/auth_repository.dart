import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/entities/refresh_user_session_request_entity.dart';
import 'package:anivsub/domain/entities/refresh_user_session_response_entity.dart';
import 'package:anivsub/domain/entities/user/user_entity.dart';
import 'package:anivsub/domain/entities/user_session_request_entity.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';

abstract class AuthRepository {
  Future<ResponseWrapper<UserSessionResponseEntity>> getUserSession(
    UserSessionRequestEntity authRequestEntity,
  );
  Future<ResponseWrapper<RefreshUserSessionResponseEntity>> refreshUserSession(
    RefreshUserSessionRequestEntity refreshTokenRequestEntity,
  );
  Future<ResponseWrapper<UserEntity>> getUser();
}
