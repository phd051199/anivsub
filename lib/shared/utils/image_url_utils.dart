import 'package:anivsub/shared/const/const.dart';

class ImageUrlUtils {
  const ImageUrlUtils._();

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
