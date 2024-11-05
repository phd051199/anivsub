import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/utils/utils.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({required AuthRemoteDataSource authRemoteDataSource})
      : _authRemoteDataSource = authRemoteDataSource;
  final AuthRemoteDataSource _authRemoteDataSource;

  @override
  Future<UserSessionResponseEntity> getUserSession(
    UserSessionRequestEntity authRequestEntity,
  ) async {
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
  }

  @override
  Future<RefreshUserSessionResponseEntity> refreshUserSession(
    RefreshUserSessionRequestEntity refreshTokenRequestEntity,
  ) async {
    final response = await _authRemoteDataSource.refreshUserSession(
      refreshTokenRequestEntity.toDTO(),
    );
    return response.toEntity();
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
