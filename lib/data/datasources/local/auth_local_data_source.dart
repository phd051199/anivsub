import 'package:anivsub/data/data_exports.dart';

abstract class AuthLocalDataSource {
  Future<void> setLocalUserSession(UserSessionResponseDTO auth);
  Future<UserSessionResponseDTO> getLocalUserSession();
  Future<void> clearLocalSession();
}
