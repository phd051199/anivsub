class FeedbackQueriesEntity {
  const FeedbackQueriesEntity({
    required this.appId,
    required this.channel,
    required this.colorScheme,
    required this.containerWidth,
    required this.height,
    required this.href,
    required this.lazy,
    required this.locale,
    required this.numposts,
    required this.orderBy,
    required this.sdk,
    required this.version,
    required this.width,
  });
  final String appId;
  final String channel;
  final String colorScheme;
  final String containerWidth;
  final String height;
  final String href;
  final String lazy;
  final String locale;
  final String numposts;
  final String orderBy;
  final String sdk;
  final String version;
  final String width;

  Map<String, dynamic> toJson() => {
        'app_id': appId,
        'channel': channel,
        'color_scheme': colorScheme,
        'container_width': containerWidth,
        'height': height,
        'href': href,
        'lazy': lazy,
        'locale': locale,
        'numposts': numposts,
        'order_by': orderBy,
        'sdk': sdk,
        'version': version,
        'width': width,
      };
}
