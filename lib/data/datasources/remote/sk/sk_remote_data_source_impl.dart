import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: SkRemoteDataSource)
class SkRemoteDataSourceImpl implements SkRemoteDataSource {
  SkRemoteDataSourceImpl(this.client);
  final SkApiClient client;

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
