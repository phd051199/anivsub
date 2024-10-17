import 'package:anivsub/data/dto/anime/decrypt_hls_request_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'cf_worker_api_client.g.dart';

@RestApi()
abstract class CFWorkerApiClient {
  factory CFWorkerApiClient(Dio dio) = _CFWorkerApiClient;

  @POST('/')
  Future<String> decryptHls(
    @Body() DecryptHlsRequestDTO body, {
    @CancelRequest() CancelToken? cancelToken,
  });
}
