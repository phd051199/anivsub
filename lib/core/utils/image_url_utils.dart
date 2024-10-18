import 'package:anivsub/core/shared/constants.dart';

class ImageUrlUtils {
  static final RegExp _hostUrlImageRegex = RegExp(
    r'https?:\/\/([^/]+.)?' + hostCurl + r'(?=(?:\:\d+)?\/)',
    caseSensitive: false,
  );

  static String removeHostUrlImage(String url) {
    return redirectOldDomainCDN(url).replaceAllMapped(_hostUrlImageRegex,
        (match) {
      return '${match.group(1) ?? ''}\$@';
    });
  }

  static String addHostUrlImage(String url) {
    return redirectOldDomainCDN(url).replaceAllMapped(
      RegExp(r'^([^/]+.)?\$@(:\d+)?(?=\/)'),
      (match) =>
          'https://${match.group(1) ?? ''}${hostCurl.replaceFirst('https://', '')}${match.group(2) ?? ''}',
    );
  }

  static String redirectOldDomainCDN(String url) {
    return url.replaceAll(
      RegExp(
        r'animevietsub\.(?:\w+)',
        caseSensitive: false,
      ),
      hostCurl,
    );
  }
}
