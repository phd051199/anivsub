import 'package:html/dom.dart' as dom;

import '../data_exports.dart';

class CommonParser {
  const CommonParser._();

  static String getPathName(String url) {
    try {
      final uri = Uri.parse(url);
      return uri.path;
    } catch (err) {
      return url;
    }
  }

  static List<AnimeDataResponseDTO> getInfoTPost(
    Iterable<dom.Element> elements,
    int now,
  ) {
    return elements.map((element) {
      final String path = CommonParser.getPathName(
        element.querySelector('a')?.attributes['href'] ?? '',
      );
      final img = element.querySelector('img');
      final image =
          img?.attributes['data-cfsrc'] ?? img?.attributes['src'] ?? '';
      final String name = element.querySelector('.Title')?.text.trim() ?? '';
      final String chap0 =
          element.querySelector('.mli-eps > i')?.text.trim() ?? '';
      final String chap = chap0 == 'TẤT' ? 'Full_Season' : chap0;
      final String rateText =
          element.querySelector('.anime-avg-user-rating')?.text.trim() ??
              element.querySelector('.AAIco-star')?.text.trim() ??
              '0';
      final double rate = double.tryParse(rateText) ?? 0.0;
      final String viewsText =
          element.querySelector('.Year')?.text.trim().replaceAll(',', '') ?? '';
      final int views = int.tryParse(
            RegExp(r'[\d,]+')
                    .firstMatch(viewsText)
                    ?.group(0)
                    ?.replaceAll(',', '') ??
                '0',
          ) ??
          0;

      final String quality = element.querySelector('.Qlty')?.text.trim() ??
          element.querySelector('.mli-quality')?.text.trim() ??
          '';
      final String process =
          element.querySelector('.AAIco-access_time')?.text.trim() ?? '';
      final String yearText =
          element.querySelector('.AAIco-date_range')?.text.trim() ?? '0';
      final int year = int.tryParse(yearText) ?? 0;
      final String description =
          element.querySelector('.Description > p')?.text.trim() ?? '';

      final studioElement = element.querySelector('.Studio');
      final String studio = studioElement != null
          ? studioElement.text.split(':').length > 1
              ? studioElement.text.split(':')[1].trim()
              : studioElement.text.trim()
          : '';

      final genre = element.querySelectorAll('.Genre > a').map((item) {
        return _getInfoAnchor(item);
      }).toList();

      final timeschedule = element.querySelector('.mli-timeschedule');
      final countdown =
          int.tryParse(timeschedule?.attributes['data-timer_second'] ?? '');
      final timeRelease = timeschedule != null
          ? (countdown != null ? (now ~/ 1000 + countdown) * 1000 : null)
          : null;

      return AnimeDataResponseDTO(
        path: path,
        image: image,
        name: name,
        chap: chap,
        rate: rate,
        views: views,
        quality: quality,
        process: process,
        year: year,
        description: description,
        studio: studio,
        genre: genre,
        timeRelease: timeRelease,
      );
    }).toList();
  }

  static Map<String, String> _getInfoAnchor(dom.Element anchor) {
    final path = CommonParser.getPathName(anchor.attributes['href'] ?? '');
    final name = anchor.text.trim();
    return {'path': path, 'name': name};
  }
}
