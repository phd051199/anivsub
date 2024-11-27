import 'package:injectable/injectable.dart';

import '../../../shared/services/service.dart';
import '../../data_exports.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  const AuthLocalDataSourceImpl({required this.flutterSecureStorageService});
  static const authKey = 'auth_token';
  final FlutterSecureStorageService flutterSecureStorageService;

  @override
  Future<UserSessionResponseDTO> getLocalUserSession() async {
    final authToken = await flutterSecureStorageService.getJSON(key: authKey);
    return UserSessionResponseDTO.fromJson(authToken);
  }

  @override
  Future<void> setLocalUserSession(UserSessionResponseDTO auth) {
    return flutterSecureStorageService.saveJSON(
      key: authKey,
      map: auth.toJson(),
    );
  }

  @override
  Future<void> clearLocalSession() {
    return flutterSecureStorageService.clearAllData();
  }
}
