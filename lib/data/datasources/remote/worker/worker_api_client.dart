import 'package:anivsub/data/dto/anime/decrypt_hls_request_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'worker_api_client.g.dart';

@RestApi()
abstract class WorkerApiClient {
  factory WorkerApiClient(Dio dio) = _WorkerApiClient;

  @POST('/')
  Future<String> decryptHls(
    @Body() DecryptHlsRequestDTO body,
    @Query('platform') String platform, {
    @CancelRequest() CancelToken? cancelToken,
  });
}
