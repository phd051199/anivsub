import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: OpenDRemoteDataSource)
class OpenDRemoteDataSourceImpl implements OpenDRemoteDataSource {
  OpenDRemoteDataSourceImpl(this.client);
  final OpenDApiClient client;

  @override
  Future<ListEpisodeResponseDTO> listEpisodes(String name) {
    return client.listEpisodes(name);
  }

  @override
  Future<EpisodeSkipResponseDTO> skipEpisode(String id) {
    return client.skipEpisode(id);
  }
}
