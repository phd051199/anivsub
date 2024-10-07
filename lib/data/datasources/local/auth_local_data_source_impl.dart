import 'package:anivsub/core/service/flutter_secure_storage_service.dart';
import 'package:anivsub/data/datasources/local/auth_local_data_source.dart';
import 'package:anivsub/data/dto/user_session_response_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AuthLocalDataSource)
class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  static const authKey = 'auth_token';
  final FlutterSecureStorageService flutterSecureStorageService;

  AuthLocalDataSourceImpl({required this.flutterSecureStorageService});

  @override
  Future<UserSessionResponseDTO> getLocalUserSession() async {
    final authToken = await flutterSecureStorageService.getJSON(key: authKey);
    return UserSessionResponseDTO.fromJson(authToken);
  }

  @override
  Future<void> setLocalUserSession(UserSessionResponseDTO auth) {
    return flutterSecureStorageService.saveJSON(
        key: authKey, map: auth.toJson());
  }

  @override
  Future<void> clearLocalSession() {
    return flutterSecureStorageService.clearAllData();
  }
}
