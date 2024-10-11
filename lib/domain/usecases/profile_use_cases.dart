import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileUseCases {
  const ProfileUseCases(this.authRepository);
  final AuthRepository authRepository;

  Future<ResponseWrapper<UserEntity>> getUser() {
    return authRepository.getUser();
  }
}
