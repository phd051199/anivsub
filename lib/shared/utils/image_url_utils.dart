import '../shared_exports.dart';

class ImageUrlUtils {
  const ImageUrlUtils._();

  static final RegExp _hostUrlImageRegex = RegExp(
    r'https?:\/\/([^/]+.)?' + getItHost + r'(?=(?:\:\d+)?\/)',
    caseSensitive: false,
  );

  /// Removes the host URL from an image path
  ///
  /// Takes a [url] string and removes the host domain, replacing it with a placeholder.
  /// First redirects any old domain CDN URLs, then replaces the host with '$@'.
  ///
  /// Example:
  /// ```dart
  /// ImageUrlUtils.removeHostUrlImage('https://cdn.example.com/image.jpg')
  /// // returns '$@/image.jpg'
  /// ```
  static String removeHostUrlImage(String url) {
    return redirectOldDomainCDN(url).replaceAllMapped(_hostUrlImageRegex,
        (match) {
      return '${match.group(1) ?? ''}\$@';
    });
  }

  /// Adds the host URL to an image path
  ///
  /// Takes a [url] string with a '$@' placeholder and replaces it with the actual host domain.
  /// First redirects any old domain CDN URLs, then replaces the placeholder with the host.
  ///
  /// Example:
  /// ```dart
  /// ImageUrlUtils.addHostUrlImage('$@/image.jpg')
  /// // returns 'https://cdn.example.com/image.jpg'
  /// ```
  static String addHostUrlImage(String url) {
    return redirectOldDomainCDN(url).replaceAllMapped(
      RegExp(r'^([^/]+.)?\$@(:\d+)?(?=\/)'),
      (match) =>
          'https://${match.group(1) ?? ''}${getItHost.replaceFirst('https://', '')}${match.group(2) ?? ''}',
    );
  }

  /// Redirects old CDN domain URLs to the current host
  ///
  /// Takes a [url] string and replaces any old 'animevietsub' domains with the current host.
  ///
  /// Example:
  /// ```dart
  /// ImageUrlUtils.redirectOldDomainCDN('https://animevietsub.xyz/image.jpg')
  /// // returns 'https://cdn.example.com/image.jpg'
  /// ```
  static String redirectOldDomainCDN(String url) {
    return url.replaceAll(
      RegExp(
        r'animevietsub\.(?:\w+)',
        caseSensitive: false,
      ),
      getItHost,
    );
  }

  /// Extracts the image name from the given URL.
  ///
  /// Takes a [url] string and returns the last segment of the URL's path,
  /// which is typically the image name.
  ///
  /// Example:
  /// ```dart
  /// StringUtils.getImageNameFromUrl('https://example.com/images/photo.jpg') // returns 'photo.jpg'
  /// StringUtils.getImageNameFromUrl('https://example.com') // returns ''
  /// ```
  /// Returns an empty string if the URL has no path segments or if parsing fails.
  static String getImageNameFromUrl(String url) {
    try {
      final uri = Uri.parse(url);
      final pathSegments = uri.pathSegments;
      return pathSegments.isNotEmpty ? pathSegments.last : '';
    } catch (e) {
      return '';
    }
  }
}
