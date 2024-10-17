import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';

abstract class AnimeRepository {
  Future<HomeDataCategoriesEntity> getHomeData();
  Future<PlayDataEntity> getPlayData(
    String id, {
    CancelToken? cancelToken,
  });
  Future<AnimeDetailEntity> getAnimeDetail(String id);
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity body, {
    CancelToken? cancelToken,
  });
  Future<String> decryptHls(
    String hash, {
    CancelToken? cancelToken,
  });
  Future<ListEpisodeResponseEntity> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  });
  Future<EpisodeSkipResponseEntity> skipEpisode(
    String id, {
    CancelToken? cancelToken,
  });
  Future<SearchResultEntity> search({required String keyword, int? page});
  Future<List<PreSearchItemEntity>> preSearch({required String keyword});
}
