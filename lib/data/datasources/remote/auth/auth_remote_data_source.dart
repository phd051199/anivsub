import 'package:anivsub/data/dto/refresh_user_session_request_dto.dart';
import 'package:anivsub/data/dto/refresh_user_session_response_dto.dart';
import 'package:anivsub/data/dto/user/user_dto.dart';
import 'package:anivsub/data/dto/user_session_request_dto.dart';
import 'package:anivsub/data/dto/user_session_response_dto.dart';

abstract class AuthRemoteDataSource {
  Future<UserSessionResponseDTO> getUserSession(
      UserSessionRequestDTO authRequestModel,);
  Future<RefreshUserSessionResponseDTO> refreshUserSession(
      RefreshUserSessionRequestDTO refreshTokenRequestModel,);
  Future<UserDTO> getUser();
}
