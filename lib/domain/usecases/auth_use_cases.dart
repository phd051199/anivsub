import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/entities/refresh_user_session_request_entity.dart';
import 'package:anivsub/domain/entities/refresh_user_session_response_entity.dart';
import 'package:anivsub/domain/entities/user_session_request_entity.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';
import 'package:anivsub/domain/repositories/auth_local_repository.dart';
import 'package:anivsub/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class AuthUseCases {

  const AuthUseCases(this._authRepository, this._authLocalRepository);
  final AuthRepository _authRepository;
  final AuthLocalRepository _authLocalRepository;

  Future<ResponseWrapper<UserSessionResponseEntity>> getUserSession(
    UserSessionRequestEntity authRequestEntity,
  ) {
    return _authRepository.getUserSession(authRequestEntity);
  }

  Future<ResponseWrapper<RefreshUserSessionResponseEntity>> refreshUserSession(
    RefreshUserSessionRequestEntity refreshTokenRequestEntity,
  ) {
    return _authRepository.refreshUserSession(refreshTokenRequestEntity);
  }

  Future<void> setLocalAuthToken(UserSessionResponseEntity auth) {
    return _authLocalRepository.setLocalUserSession(auth);
  }

  Future<ResponseWrapper<UserSessionResponseEntity>> getLocalUserSession() {
    return _authLocalRepository.getLocalUserSession();
  }

  Future<void> clearLocalSession() {
    return _authLocalRepository.clearLocalSession();
  }
}
