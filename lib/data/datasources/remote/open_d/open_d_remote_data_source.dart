import 'package:anivsub/data/data_exports.dart';

abstract class OpenDRemoteDataSource {
  Future<ListEpisodeResponseDTO> listEpisodes(List<String> name);
  Future<EpisodeSkipResponseDTO> skipEpisode(String id);
}
