import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@singleton
class HomeUseCases {
  final AuthLocalRepository _authLocalRepository;

  const HomeUseCases(this._authLocalRepository);

  Future<ResponseWrapper<UserSessionResponseEntity>> getLocalUserSession() {
    return _authLocalRepository.getLocalUserSession();
  }
}
