import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeUseCases {
  const HomeUseCases(this._authLocalRepository);
  final AuthLocalRepository _authLocalRepository;

  Future<UserSessionResponseEntity> getLocalUserSession() {
    return _authLocalRepository.getLocalUserSession();
  }
}
