import 'package:anivsub/data/datasources/remote/auth/auth_api_client.dart';
import 'package:anivsub/data/datasources/remote/auth/auth_remote_data_source.dart';
import 'package:anivsub/data/dto/refresh_user_session_request_dto.dart';
import 'package:anivsub/data/dto/refresh_user_session_response_dto.dart';
import 'package:anivsub/data/dto/user/user_dto.dart';
import 'package:anivsub/data/dto/user_session_request_dto.dart';
import 'package:anivsub/data/dto/user_session_response_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({required this.client});
  final AuthApiClient client;

  @override
  Future<UserSessionResponseDTO> getUserSession(
    UserSessionRequestDTO authRequestModel,
  ) {
    return client.getUserSession(authRequestModel);
  }

  @override
  Future<RefreshUserSessionResponseDTO> refreshUserSession(
    RefreshUserSessionRequestDTO refreshTokenRequestModel,
  ) {
    return client.refreshUserSession(refreshTokenRequestModel);
  }

  @override
  Future<UserDTO> getUser() {
    return client.getUser();
  }
}
