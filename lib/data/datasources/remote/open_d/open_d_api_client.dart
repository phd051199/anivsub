import 'package:anivsub/core/shared/constants.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'open_d_api_client.g.dart';

@RestApi()
abstract class OpenDApiClient {
  factory OpenDApiClient(Dio dio) = _OpenDApiClient;

  @GET('/list-episodes')
  Future<ListEpisodeResponseDTO> listEpisodes(@Query('name') String name);

  @GET('$skApiUrl1/episode-skip/{id}')
  Future<EpisodeSkipResponseDTO> skipEpisode9animetv(@Path('id') String id);

  @GET('$skApiUrl2/episode-skip/{id}')
  Future<EpisodeSkipResponseDTO> skipEpisodeHianime(@Path('id') String id);
}
