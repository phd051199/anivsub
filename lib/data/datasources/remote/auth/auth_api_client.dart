import 'package:anivsub/data/dto/refresh_user_session_request_dto.dart';
import 'package:anivsub/data/dto/refresh_user_session_response_dto.dart';
import 'package:anivsub/data/dto/user/user_dto.dart';
import 'package:anivsub/data/dto/user_session_request_dto.dart';
import 'package:anivsub/data/dto/user_session_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_client.g.dart';

@RestApi()
abstract class AuthApiClient {
  factory AuthApiClient(Dio dio) = _AuthApiClient;

  @POST('/auth/login')
  Future<UserSessionResponseDTO> getUserSession(
    @Body() UserSessionRequestDTO authRequestModel,
  );

  @POST('/auth/refresh')
  Future<RefreshUserSessionResponseDTO> refreshUserSession(
    @Body() RefreshUserSessionRequestDTO refreshTokenRequestModel,
  );

  @GET('/auth/me')
  Future<UserDTO> getUser();
}
