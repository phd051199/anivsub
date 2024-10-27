import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
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
      final html = await _authRemoteDataSource.loginWithUsernameAndPassword(
        email: authRequestEntity.username,
        passwordMd5: Md5Utils.hash(authRequestEntity.password),
      );

      if (html.contains('alert-error')) {
        throw AccountInfoParser.parseError(html);
      }

      final userInfo = await getUser();

      return UserSessionResponseEntity(
        username: userInfo.username,
        email: userInfo.email,
        gender: userInfo.gender,
        image: userInfo.image,
      );
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
  Future<UserEntity> getUser() async {
    final html = await _authRemoteDataSource.getUser();
    final user = AccountInfoParser.parse(html);

    return UserEntity(
      username: user['name'],
      lastName: user['name'],
      firstName: '',
      email: user['email'],
      gender: user['sex'],
      image: user['avatar'],
    );
  }
}
