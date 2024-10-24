// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_queries_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeedbackQueriesEntityImpl _$$FeedbackQueriesEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$FeedbackQueriesEntityImpl(
      appId: json['app_id'] as String,
      channel: json['channel'] as String,
      colorScheme: json['color_scheme'] as String,
      containerWidth: json['container_width'] as String,
      height: json['height'] as String,
      href: json['href'] as String,
      lazy: json['lazy'] as String,
      locale: json['locale'] as String,
      numposts: json['numposts'] as String,
      orderBy: json['order_by'] as String,
      sdk: json['sdk'] as String,
      version: json['version'] as String,
      width: json['width'] as String,
    );

Map<String, dynamic> _$$FeedbackQueriesEntityImplToJson(
        _$FeedbackQueriesEntityImpl instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'channel': instance.channel,
      'color_scheme': instance.colorScheme,
      'container_width': instance.containerWidth,
      'height': instance.height,
      'href': instance.href,
      'lazy': instance.lazy,
      'locale': instance.locale,
      'numposts': instance.numposts,
      'order_by': instance.orderBy,
      'sdk': instance.sdk,
      'version': instance.version,
      'width': instance.width,
    };
