// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fb_comment_plugin_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FbCommentPluginConfigImpl _$$FbCommentPluginConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$FbCommentPluginConfigImpl(
      appId: json['appId'] as String? ?? '',
      href: json['href'] as String,
      limit: (json['limit'] as num?)?.toInt() ?? 10,
      locale: json['locale'] as String? ?? 'vi_VN',
      orderBy: json['orderBy'] as String? ?? 'reverse_time',
      pluginUrl:
          json['pluginUrl'] as String? ?? 'https://www.facebook.com/plugins',
      dialogUrl:
          json['dialogUrl'] as String? ?? 'https://www.facebook.com/dialog',
      app: json['app'] as String,
      sdk: json['sdk'] as String? ?? 'joey',
      version: json['version'] as String? ?? 'v15.0',
      headersCustom: (json['headersCustom'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$FbCommentPluginConfigImplToJson(
        _$FbCommentPluginConfigImpl instance) =>
    <String, dynamic>{
      'appId': instance.appId,
      'href': instance.href,
      'limit': instance.limit,
      'locale': instance.locale,
      'orderBy': instance.orderBy,
      'pluginUrl': instance.pluginUrl,
      'dialogUrl': instance.dialogUrl,
      'app': instance.app,
      'sdk': instance.sdk,
      'version': instance.version,
      'headersCustom': instance.headersCustom,
    };
