import 'package:anivsub/domain/domain_exports.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

import 'common_parser.dart';

class HomeDataParser {
  static HomeDataCategoriesEntity parse(String html) {
    final dom.Document document = parser.parse(html);
    final int now = DateTime.now().millisecondsSinceEpoch;

    final List<AnimeDataEntity> thisSeason = CommonParser.getInfoTPost(
      document.querySelectorAll('.MovieListTopCn .TPostMv'),
      now,
    );
    final List<AnimeDataEntity> sliderMovies = CommonParser.getInfoTPost(
      document.querySelectorAll('.MovieListSldCn .TPostMv'),
      now,
    );
    final List<AnimeDataEntity> latestUpdates = CommonParser.getInfoTPost(
      document.querySelectorAll('#single-home .TPostMv'),
      now,
    );
    final List<AnimeDataEntity> preRelease = CommonParser.getInfoTPost(
      document.querySelectorAll('#new-home .TPostMv'),
      now,
    );
    final List<AnimeDataEntity> hotUpdates = CommonParser.getInfoTPost(
      document.querySelectorAll('#hot-home .TPostMv'),
      now,
    );
    final List<AnimeDataEntity> topMovies = CommonParser.getInfoTPost(
      document.querySelectorAll('#showTopPhim .TPost'),
      now,
    );

    return HomeDataCategoriesEntity(
      topMovies: topMovies,
      sliderMovies: sliderMovies,
      latestUpdates: latestUpdates,
      preRelease: preRelease,
      hotUpdates: hotUpdates,
      thisSeason: thisSeason,
    );
  }
}
