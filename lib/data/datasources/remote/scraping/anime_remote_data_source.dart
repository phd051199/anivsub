import 'package:anivsub/data/data_exports.dart';

abstract class AnimeRemoteDataSource {
  Future<String> getHomeData();
  Future<String> getAnimeDetail(String id);
  Future<String> getPlayData(String id);
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    GetEncryptedHlsRequestDTO body,
  );
}
