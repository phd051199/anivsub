import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'scraping_client.g.dart';

@RestApi()
abstract class ScrapingClient {
  factory ScrapingClient(Dio dio) = _ScrapingClient;

  @GET('/')
  Future<String> getHomeData();

  @GET('/{id}')
  Future<String> getAnimeDetail(
    @Path('id') String id, {
    @CancelRequest() CancelToken? cancelToken,
  });

  @GET('/{id}/xem-phim.html')
  Future<String> getPlayData(
    @Path('id') String id, {
    @CancelRequest() CancelToken? cancelToken,
  });

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
    @Field('backuplinks') String backuplinks, {
    @CancelRequest() CancelToken? cancelToken,
  });

  @POST('/ajax/suggest')
  @FormUrlEncoded()
  Future<String> preSearch(
    @Field('keysearch') String keyword,
    @Field('ajaxSearch') int ajaxSearch,
  );
}
