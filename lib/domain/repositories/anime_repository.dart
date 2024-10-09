import 'package:anivsub/domain/domain_exports.dart';

abstract class AnimeRepository {
  Future<HomeDataCategoriesEntity> fetchHomeData();
  Future<PlayDataEntity> fetchPlayData(String id);
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity body,
  );
  Future<String> decryptHls(String hash);
}
