import 'package:anivsub/data/data_exports.dart';

abstract class AuthRemoteDataSource {
  Future<UserSessionResponseDTO> getUserSession(
    UserSessionRequestDTO authRequestModel,
  );
  Future<RefreshUserSessionResponseDTO> refreshUserSession(
    RefreshUserSessionRequestDTO refreshTokenRequestModel,
  );
  Future<String> getUser();
  Future<String> loginWithUsernameAndPassword({
    required String email,
    required String passwordMd5,
  });
}
