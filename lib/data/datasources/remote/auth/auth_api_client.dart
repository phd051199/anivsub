import 'package:anivsub/data/data_exports.dart';
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

  @GET('https://animevietsub.ink/account/info')
  Future<String> getUser();

  @POST('https://animevietsub.ink/account/login')
  @FormUrlEncoded()
  Future<String> loginWithUsernameAndPassword(
    @Field('email') String email,
    @Field('password') String password,
    @Field('password_md5') String passwordMd5,
    @Field('save_password') String savePassword,
    @Field('submit') String submit,
  );
}
