import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/data/datasources/remote/auth/auth_remote_data_source.dart';
import 'package:anivsub/domain/entities/refresh_user_session_request_entity.dart';
import 'package:anivsub/domain/entities/refresh_user_session_response_entity.dart';
import 'package:anivsub/domain/entities/user/user_entity.dart';
import 'package:anivsub/domain/entities/user_session_request_entity.dart';
import 'package:anivsub/domain/entities/user_session_response_entity.dart';
import 'package:anivsub/domain/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;
  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<ResponseWrapper<UserSessionResponseEntity>> getUserSession(
    UserSessionRequestEntity authRequestEntity,
  ) {
    return execute(() async {
      final response =
          await _authRemoteDataSource.getUserSession(authRequestEntity.toDTO());
      return response.toEntity();
    });
  }

  @override
  Future<ResponseWrapper<RefreshUserSessionResponseEntity>> refreshUserSession(
    RefreshUserSessionRequestEntity refreshTokenRequestEntity,
  ) {
    return execute(() async {
      final response = await _authRemoteDataSource.refreshUserSession(
        refreshTokenRequestEntity.toDTO(),
      );
      return response.toEntity();
    });
  }

  @override
  Future<ResponseWrapper<UserEntity>> getUser() {
    return execute(() async {
      final response = await _authRemoteDataSource.getUser();
      return response.toEntity();
    });
  }
}
