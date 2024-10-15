import 'package:anivsub/domain/domain_exports.dart';
import 'package:html/dom.dart' as dom;

class CommonParser {
  static String getPathName(String url) {
    try {
      final uri = Uri.parse(url);
      return uri.path;
    } catch (err) {
      return url;
    }
  }

  static List<AnimeDataEntity> getInfoTPost(
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
          element.querySelector('.anime-avg-user-rating')?.text.trim() ?? '';
      final double rate = double.tryParse(rateText) ?? 0.0;
      final String viewsText =
          element.querySelector('.Year')?.text.trim().replaceAll(',', '') ?? '';
      final int views =
          int.tryParse(viewsText != '' ? viewsText.split(':')[1] : '0') ?? 0;
      final String quality = element.querySelector('.Qlty')?.text.trim() ?? '';
      final String process =
          element.querySelector('.AAIco-access_time')?.text.trim() ?? '';
      final String yearText =
          element.querySelector('.AAIco-date_range')?.text.trim() ?? '0';
      final int year = int.tryParse(yearText) ?? 0;
      final String description =
          element.querySelector('.Description > p')?.text.trim() ?? '';
      final String studio =
          element.querySelector('.Studio')?.text.split(':').last.trim() ?? '';
      final genre = element.querySelectorAll('.Genre > a').map((item) {
        return _getInfoAnchor(item);
      }).toList();

      return AnimeDataEntity(
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
        timeRelease: _getTimeRelease(element, now),
      );
    }).toList();
  }

  static Map<String, String> _getInfoAnchor(dom.Element anchor) {
    final path = CommonParser.getPathName(anchor.attributes['href'] ?? '');
    final name = anchor.text.trim();
    return {'path': path, 'name': name};
  }

  static int? _getTimeRelease(dom.Element element, int now) {
    final timeschedule = element.querySelector('.mli-timeschedule');
    final countdown =
        int.tryParse(timeschedule?.attributes['data-timer_second'] ?? '');
    return countdown != null ? (now ~/ 1000 + countdown) * 1000 : null;
  }
}
