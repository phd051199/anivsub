import 'package:anivsub/data/data_exports.dart';

abstract class AnimeRemoteDataSource {
  Future<String> getHomeData();
  Future<String> getAnimeDetail(String id);
  Future<String> getPlayData(String id);
  Future<String> search({required String keyword, int page});
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    GetEncryptedHlsRequestDTO body,
  );
  Future<String> preSearch({required String keyword, int ajaxSearch});
}
