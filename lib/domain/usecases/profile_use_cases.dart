import 'package:anivsub/core/network/response.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProfileUseCases {
  final AuthRepository authRepository;

  const ProfileUseCases(this.authRepository);

  Future<ResponseWrapper<UserEntity>> getUser() {
    return authRepository.getUser();
  }
}
