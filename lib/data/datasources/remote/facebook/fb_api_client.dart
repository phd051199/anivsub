import 'package:anivsub/domain/domain_exports.dart';
import 'package:anivsub/shared/const/const.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

part 'fb_api_client.g.dart';

@RestApi()
abstract class FbApiClient {
  factory FbApiClient(Dio dio) = _FbApiClient;

  @GET('/plugins/feedback.php')
  @Headers(headers)
  Future<String> getFeedback(
    @Queries() FeedbackQueriesEntity queries,
  );

  @POST('/plugins/comments/async/{targetID}/pager/{orderBy}/')
  @Headers(fbHeaders)
  Future<String> getComments(
    @Path('targetID') String targetID,
    @Path('orderBy') String orderBy,
    @Body() Map<String, dynamic> body,
    @Header('x-fb-lsd') String? xFbLsd,
    @Header('origin') String? origin,
    @Header('Referer') String? referer,
  );

  @POST('/plugins/comments/async/createComment/{targetID}/')
  @Headers(fbHeaders)
  Future<String> postComment(
    @Path('targetID') String targetID,
    @Body() Map<String, dynamic> body,
    @Header('x-fb-lsd') String? xFbLsd,
    @Header('origin') String? origin,
    @Header('Referer') String? referer,
  );

  @POST('/plugins/comments/async/delete/')
  @Headers(fbHeaders)
  Future<String> deleteComment(
    @Query('av') String av,
    @Body() Map<String, dynamic> body,
  );

  @POST('/plugins/comments/async/like/')
  @Headers(fbHeaders)
  Future<String> likeComment(
    @Query('action_like') bool actionLike,
    @Query('av') String av,
    @Body() Map<String, dynamic> body,
  );
}
