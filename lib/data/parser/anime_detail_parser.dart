import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class AnimeDetailParser {
  static AnimeDetailEntity parse(String html) {
    final dom.Document document = parser.parse(html);
    final int now = DateTime.now().millisecondsSinceEpoch;

    final String name = document.querySelector('.Title')?.text ?? '';
    final String othername = document.querySelector('.SubTitle')?.text ?? '';

    final String image =
        document.querySelector('.Image img')?.attributes['src'] ?? '';
    final String poster =
        document.querySelector('.TPostBg img')?.attributes['src'] ?? '';
    final String? pathToView = document.querySelector('.watch_button_more') !=
            null
        ? _getPathName(
            document.querySelector('.watch_button_more')?.attributes['href'] ??
                '',
          )
        : null;
    final String description =
        document.querySelector('.Description')?.text.trim() ?? '';
    final int rate =
        int.tryParse(document.querySelector('#average_score')?.text ?? '0') ??
            0;
    final int countRate =
        int.tryParse(document.querySelector('.num-rating')?.text ?? '0') ?? 0;
    final String duration =
        document.querySelector('.AAIco-access_time')?.text ?? '';
    final int yearOf = int.tryParse(
          document.querySelector('.AAIco-date_range a')?.text ?? '0',
        ) ??
        0;
    final int views = int.tryParse(
          document
                  .querySelector('.AAIco-remove_red_eye')
                  ?.text
                  .replaceAll(RegExp(r'[\D]+'), '') ??
              '0',
        ) ??
        0;

    final List<Anchor> season = document
        .querySelectorAll('.season_item > a')
        .map((item) => _getInfoAnchor(item))
        .toList();

    final List<Anchor> genre = document
        .querySelectorAll('.breadcrumb > li > a')
        .skip(1)
        .take(document.querySelectorAll('.breadcrumb > li > a').length - 2)
        .map((item) => _getInfoAnchor(item))
        .toList();

    final String quality = document.querySelector('.Qlty')?.text ?? '';

    // Info section
    final dom.Element? infoListLeft =
        document.querySelector('.mvici-left .InfoList .AAIco-adjust');
    final dom.Element? infoListRight =
        document.querySelector('.mvici-right .InfoList .AAIco-adjust');

    final String status = _findInfo(document, infoListLeft, 'trạng thái')
            ?.text
            .split(':')
            .last
            .trim() ??
        '';
    final List<Anchor> authors = _findInfo(document, infoListLeft, 'đạo diễn')
            ?.querySelectorAll('a')
            .map((item) => _getInfoAnchor(item))
            .toList() ??
        [];

    final List<Anchor> countries = _findInfo(document, infoListLeft, 'quốc gia')
            ?.querySelectorAll('a')
            .map((item) => _getInfoAnchor(item))
            .toList() ??
        [];

    final int follows = int.tryParse(
          _findInfo(document, infoListLeft, 'số người theo dõi')
                  ?.text
                  .split(':')
                  .last
                  .trim()
                  .replaceAll(',', '') ??
              '0',
        ) ??
        0;

    final String language = _findInfo(document, infoListRight, 'ngôn ngữ')
            ?.text
            .split(':')
            .last
            .trim() ??
        '';
    final String studio = _findInfo(document, infoListRight, 'studio')
            ?.text
            .split(':')
            .last
            .trim() ??
        '';
    final Anchor seasonOf = _getInfoAnchor(
      _findInfo(document, infoListRight, 'season')?.querySelector('a'),
    );

    final String? trailer =
        document.querySelector('#Opt1 iframe')?.attributes['src'];

    final List<AnimeDataEntity> toPut = document
        .querySelectorAll('.MovieListRelated .TPostMv')
        .map((item) => _getInfoTPost(item, now))
        .toList();

    return AnimeDetailEntity(
      name: name,
      othername: othername,
      image: image,
      poster: poster,
      description: description,
      rate: rate,
      countRate: countRate,
      duration: duration,
      yearOf: yearOf,
      views: views,
      season: season,
      genre: genre,
      quality: quality,
      status: status,
      authors: authors,
      countries: countries,
      follows: follows,
      language: language,
      studio: studio,
      toPut: toPut,
      seasonOf: seasonOf,
      trailer: trailer,
      pathToView: pathToView,
    );
  }

  static String _getPathName(String? url) {
    if (url == null) return '';
    try {
      final uri = Uri.parse(url);
      return uri.path;
    } catch (err) {
      return url;
    }
  }

  static Anchor _getInfoAnchor(dom.Element? anchor) {
    final path = _getPathName(anchor?.attributes['href']);
    final name = anchor?.text.trim() ?? '';

    return Anchor(name: name, path: path);
  }

  static dom.Element? _findInfo(
    dom.Document document,
    dom.Element? listElement,
    String keyword,
  ) {
    return listElement?.querySelectorAll('.AAIco-adjust').firstWhere(
          (element) =>
              element.text.toLowerCase().contains(keyword.toLowerCase()),
          orElse: () => dom.Element.tag(''),
        );
  }

  static AnimeDataEntity _getInfoTPost(dom.Element element, int now) {
    final String path =
        _getPathName(element.querySelector('a')?.attributes['href'] ?? '');
    final img = element.querySelector('img');
    final String image =
        img?.attributes['data-cfsrc'] ?? img?.attributes['src'] ?? '';
    final String name = element.querySelector('.Title')?.text.trim() ?? '';
    final String chap =
        element.querySelector('.mli-eps > i')?.text.trim() ?? '';
    final String quality = element.querySelector('.Qlty')?.text.trim() ?? '';
    final int year = int.tryParse(
          element.querySelector('.AAIco-date_range')?.text.trim() ?? '0',
        ) ??
        0;
    final String description =
        element.querySelector('.Description > p')?.text.trim() ?? '';

    return AnimeDataEntity(
      path: path,
      image: image,
      name: name,
      chap: chap,
      quality: quality,
      year: year,
      description: description,
      timeRelease: _getTimeRelease(element, now),
    );
  }

  static int? _getTimeRelease(dom.Element element, int now) {
    final timeschedule = element.querySelector('.mli-timeschedule');
    final countdown =
        int.tryParse(timeschedule?.attributes['data-timer_second'] ?? '');
    return countdown != null ? (now ~/ 1000 + countdown) * 1000 : null;
  }
}
