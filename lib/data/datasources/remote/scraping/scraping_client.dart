import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'scraping_client.g.dart';

@RestApi()
abstract class ScrapingClient {
  factory ScrapingClient(Dio dio) = _ScrapingClient;

  @GET('/')
  Future<String> getHomeData();
}
