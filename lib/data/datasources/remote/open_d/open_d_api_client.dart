import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'open_d_api_client.g.dart';

@RestApi()
abstract class OpenDApiClient {
  factory OpenDApiClient(Dio dio) = _OpenDApiClient;

  @GET('/list-episodes')
  Future<ListEpisodeResponseDTO> listEpisodes(@Query('name') String name);

  @GET('/episode-skip/{id}')
  Future<EpisodeSkipResponseDTO> skipEpisode(@Path('id') String id);
}
