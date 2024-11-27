import 'package:dio/dio.dart';

import '../domain_exports.dart';

abstract class AnimeRepository {
  Future<HomeDataCategoriesEntity> getHomeData();
  Future<PlayDataEntity> getPlayData(
    String id, {
    CancelToken? cancelToken,
  });
  Future<AnimeDetailEntity> getAnimeDetail(
    String id, {
    CancelToken? cancelToken,
  });
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity body, {
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
