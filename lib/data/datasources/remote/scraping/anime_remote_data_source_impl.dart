import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRemoteDataSource)
class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  AnimeRemoteDataSourceImpl({required this.client});
  final ScrapingClient client;

  @override
  Future<String> getHomeData() {
    return client.getHomeData();
  }

  @override
  Future<String> getAnimeDetail(String id) {
    return client.getAnimeDetail(id);
  }

  @override
  Future<String> getPlayData(String id, {CancelToken? cancelToken}) {
    return client.getPlayData(id, cancelToken: cancelToken);
  }

  @override
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    GetEncryptedHlsRequestDTO body, {
    CancelToken? cancelToken,
  }) {
    return client.getEncryptedHls(
      body.id,
      body.play,
      body.link,
      body.backuplinks,
      cancelToken: cancelToken,
    );
  }

  @override
  Future<String> search({required String keyword, int page = 1}) {
    return client.search(keyword, page);
  }

  @override
  Future<String> preSearch({required String keyword, int ajaxSearch = 1}) {
    return client.preSearch(keyword, ajaxSearch);
  }
}
