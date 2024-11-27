import 'package:dio/dio.dart';

import '../../../data_exports.dart';

abstract class EpisodeSkipRemoteDataSource {
  Future<ListEpisodeResponseDTO> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  });
  Future<EpisodeSkipResponseDTO> skipEpisode(
    String id, {
    CancelToken? cancelToken,
  });
}
