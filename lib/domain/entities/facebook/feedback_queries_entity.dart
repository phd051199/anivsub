import 'package:freezed_annotation/freezed_annotation.dart';

part 'feedback_queries_entity.freezed.dart';
part 'feedback_queries_entity.g.dart';

@freezed
class FeedbackQueriesEntity with _$FeedbackQueriesEntity {
  const factory FeedbackQueriesEntity({
    @JsonKey(name: 'app_id') required String appId,
    @JsonKey(name: 'channel') required String channel,
    @JsonKey(name: 'color_scheme') required String colorScheme,
    @JsonKey(name: 'container_width') required String containerWidth,
    @JsonKey(name: 'height') required String height,
    @JsonKey(name: 'href') required String href,
    @JsonKey(name: 'lazy') required String lazy,
    @JsonKey(name: 'locale') required String locale,
    @JsonKey(name: 'numposts') required String numposts,
    @JsonKey(name: 'order_by') required String orderBy,
    @JsonKey(name: 'sdk') required String sdk,
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'width') required String width,
  }) = _FeedbackQueriesEntity;

  factory FeedbackQueriesEntity.fromJson(Map<String, dynamic> json) =>
      _$FeedbackQueriesEntityFromJson(json);
}
