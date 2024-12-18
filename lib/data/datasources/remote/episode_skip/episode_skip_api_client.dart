import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../../shared/const/const.dart';
import '../../../data_exports.dart';

part 'episode_skip_api_client.g.dart';

@RestApi()
abstract class EpisodeSkipApiClient {
  factory EpisodeSkipApiClient(Dio dio) = _EpisodeSkipApiClient;

  @GET('/list-episodes')
  Future<ListEpisodeResponseDTO> listEpisodes(
    @Query('name') List<String> name, {
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('$sk9animetvApiUrl/episode-skip/{id}')
  Future<EpisodeSkipResponseDTO> skipEpisode9animetv(
    @Path('id') String id, {
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('$skHianimeApiUrl/episode-skip/{id}')
  Future<EpisodeSkipResponseDTO> skipEpisodeHianime(
    @Path('id') String id, {
    @CancelRequest() CancelToken? cancelToken,
  });
}
