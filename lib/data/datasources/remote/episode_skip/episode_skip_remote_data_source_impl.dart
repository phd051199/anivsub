import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../data_exports.dart';

@LazySingleton(as: EpisodeSkipRemoteDataSource)
class EpisodeSkipRemoteDataSourceImpl implements EpisodeSkipRemoteDataSource {
  const EpisodeSkipRemoteDataSourceImpl(this.client);
  final EpisodeSkipApiClient client;

  @override
  Future<ListEpisodeResponseDTO> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  }) {
    return client.listEpisodes(name, cancelToken: cancelToken);
  }

  @override
  Future<EpisodeSkipResponseDTO> skipEpisode(
    String id, {
    CancelToken? cancelToken,
  }) async {
    final result = await Future.any([
      client.skipEpisodeHianime(id, cancelToken: cancelToken),
      client.skipEpisode9animetv(id, cancelToken: cancelToken),
    ]);
    return result;
  }
}
