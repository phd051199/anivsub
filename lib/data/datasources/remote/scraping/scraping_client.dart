import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'scraping_client.g.dart';

@RestApi()
abstract class ScrapingClient {
  factory ScrapingClient(Dio dio) = _ScrapingClient;

  @GET('/')
  Future<String> getHomeData();

  @GET('/phim/{id}')
  Future<String> getAnimeDetail(@Path('id') String id);

  @GET('/{id}/xem-phim.html')
  Future<String> getPlayData(@Path('id') String id);

  @GET('/tim-kiem/{keyword}/trang-{page}.html')
  Future<String> search(
    @Path('keyword') String keyword,
    @Path('page') int page,
  );

  @POST('/ajax/player?v=2019a')
  @FormUrlEncoded()
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    @Field('id') String id,
    @Field('play') String play,
    @Field('link') String link,
    @Field('backuplinks') String backuplinks,
  );
}
