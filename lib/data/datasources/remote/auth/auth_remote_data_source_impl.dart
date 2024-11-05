import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({required this.client});
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
  Future<String> getUser() {
    return client.getUser();
  }

  @override
  Future<String> loginWithUsernameAndPassword({
    required String email,
    required String passwordMd5,
  }) {
    return client.loginWithUsernameAndPassword(email, '', passwordMd5, '1', '');
  }
}
