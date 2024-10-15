import 'package:anivsub/domain/domain_exports.dart';

abstract class AnimeRepository {
  Future<HomeDataCategoriesEntity> getHomeData();
  Future<PlayDataEntity> getPlayData(String id);
  Future<AnimeDetailEntity> getAnimeDetail(String id);
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity body,
  );
  Future<String> decryptHls(String hash);
  Future<ListEpisodeResponseEntity> listEpisodes(List<String> name);
  Future<EpisodeSkipResponseEntity> skipEpisode(String id);
  Future<SearchResultEntity> search({required String keyword, int? page});
}
