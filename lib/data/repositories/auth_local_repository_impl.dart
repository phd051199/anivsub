import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/data/datasources/local/auth_local_data_source.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';
import 'package:anivsub/domain/repositories/auth_local_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthLocalRepository)
class AuthLocalRepositoryImpl implements AuthLocalRepository {
  AuthLocalRepositoryImpl({required AuthLocalDataSource authLocalDataSource})
      : _authLocalDataSource = authLocalDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  @override
  Future<ResponseWrapper<UserSessionResponseEntity>> getLocalUserSession() {
    return execute(() async {
      final response = await _authLocalDataSource.getLocalUserSession();
      return response.toEntity();
    });
  }

  @override
  Future<void> setLocalUserSession(UserSessionResponseEntity auth) {
    return execute(() async {
      final authDTO = auth.toDTO();
      await _authLocalDataSource.setLocalUserSession(authDTO);
    });
  }

  @override
  Future<void> clearLocalSession() async {
    await _authLocalDataSource.clearLocalSession();
  }
}
