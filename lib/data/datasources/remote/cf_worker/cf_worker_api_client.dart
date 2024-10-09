import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'cf_worker_api_client.g.dart';

class RequestDTO {
  RequestDTO({required this.hash});

  factory RequestDTO.fromJson(Map<String, dynamic> json) =>
      RequestDTO(hash: json['hash']);
  String hash;
  Map<String, dynamic> toJson() => {'hash': hash};
}

@RestApi()
abstract class CFWorkerApiClient {
  factory CFWorkerApiClient(Dio dio) = _CFWorkerApiClient;

  @POST('/')
  Future<String> decryptHls(@Body() RequestDTO body);
}
