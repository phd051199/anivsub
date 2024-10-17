import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';

abstract class OpenDRemoteDataSource {
  Future<ListEpisodeResponseDTO> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  });
  Future<EpisodeSkipResponseDTO> skipEpisode(
    String id, {
    CancelToken? cancelToken,
  });
}
