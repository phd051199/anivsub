import 'package:anivsub/core/service/flutter_secure_storage_service.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  AuthLocalDataSourceImpl({required this.flutterSecureStorageService});
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
