class FBCommentPluginConfig {
  const FBCommentPluginConfig({
    this.appId = '',
    required this.href,
    this.limit = 10,
    required this.locale,
    this.orderBy = 'reverse_time',
    this.pluginUrl = 'https://www.facebook.com/plugins',
    this.dialogUrl = 'https://www.facebook.com/dialog',
    required this.app,
    this.sdk = 'joey',
    this.version = 'v15.0',
    this.headersCustom,
  });

  final String? appId;
  final String href;
  final int limit;
  final String locale;
  final String orderBy;
  final String pluginUrl;
  final String dialogUrl;
  final String app;
  final String sdk;
  final String version;
  final Map<String, String>? headersCustom;

  FBCommentPluginConfig copyWith({
    String? appId,
    String? href,
    int? limit,
    String? locale,
    String? orderBy,
    String? pluginUrl,
    String? dialogUrl,
    String? app,
    String? sdk,
    String? version,
    Map<String, String>? headersCustom,
  }) {
    return FBCommentPluginConfig(
      appId: appId ?? this.appId,
      href: href ?? this.href,
      limit: limit ?? this.limit,
      locale: locale ?? this.locale,
      orderBy: orderBy ?? this.orderBy,
      pluginUrl: pluginUrl ?? this.pluginUrl,
      dialogUrl: dialogUrl ?? this.dialogUrl,
      app: app ?? this.app,
      sdk: sdk ?? this.sdk,
      version: version ?? this.version,
      headersCustom: headersCustom ?? this.headersCustom,
    );
  }
}
