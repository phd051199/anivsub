import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileUseCases {
  const ProfileUseCases(this.authRepository);
  final AuthRepository authRepository;

  Future<UserEntity> getUser() {
    return authRepository.getUser();
  }
}
