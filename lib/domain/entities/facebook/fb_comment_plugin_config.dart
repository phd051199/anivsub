import 'package:freezed_annotation/freezed_annotation.dart';

part 'fb_comment_plugin_config.freezed.dart';
part 'fb_comment_plugin_config.g.dart';

@freezed
class FbCommentPluginConfig with _$FbCommentPluginConfig {
  const factory FbCommentPluginConfig({
    @JsonKey(name: 'appId') @Default('') String appId,
    @JsonKey(name: 'href') required String href,
    @JsonKey(name: 'limit') @Default(10) int limit,
    @JsonKey(name: 'locale') @Default('vi_VN') String locale,
    @JsonKey(name: 'orderBy') @Default('reverse_time') String orderBy,
    @JsonKey(name: 'pluginUrl')
    @Default('https://www.facebook.com/plugins')
    String pluginUrl,
    @JsonKey(name: 'dialogUrl')
    @Default('https://www.facebook.com/dialog')
    String dialogUrl,
    @JsonKey(name: 'app') required String app,
    @JsonKey(name: 'sdk') @Default('joey') String sdk,
    @JsonKey(name: 'version') @Default('v15.0') String version,
    @JsonKey(name: 'headersCustom') Map<String, String>? headersCustom,
  }) = _FbCommentPluginConfig;

  factory FbCommentPluginConfig.fromJson(Map<String, dynamic> json) =>
      _$FbCommentPluginConfigFromJson(json);
}
