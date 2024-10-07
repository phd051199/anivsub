import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/domain_exports.dart';

class ProfileUseCases {
  final AuthRepository authRepository;

  const ProfileUseCases(this.authRepository);

  Future<ResponseWrapper<UserEntity>> getUser() {
    return authRepository.getUser();
  }
}
