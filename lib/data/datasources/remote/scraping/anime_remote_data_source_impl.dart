import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../data_exports.dart';

@LazySingleton(as: AnimeRemoteDataSource)
class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  const AnimeRemoteDataSourceImpl({required this.client});
  final ScrapingClient client;

  @override
  Future<String> getHomeData() {
    return client.getHomeData();
  }

  @override
  Future<String> getAnimeDetail(String id, {CancelToken? cancelToken}) {
    return client.getAnimeDetail(id, cancelToken: cancelToken);
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
