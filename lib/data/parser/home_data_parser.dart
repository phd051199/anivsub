import 'package:anivsub/data/data_exports.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class HomeDataParser {
  static HomeDataCategoriesDTO parse(String html) {
    final dom.Document document = parser.parse(html);
    final int now = DateTime.now().millisecondsSinceEpoch;

    final List<AnimeDataResponseDTO> thisSeason = CommonParser.getInfoTPost(
      document.querySelectorAll('.MovieListTopCn .TPostMv'),
      now,
    );
    final List<AnimeDataResponseDTO> sliderMovies = CommonParser.getInfoTPost(
      document.querySelectorAll('.MovieListSldCn .TPostMv'),
      now,
    );
    final List<AnimeDataResponseDTO> latestUpdates = CommonParser.getInfoTPost(
      document.querySelectorAll('#single-home .TPostMv'),
      now,
    );
    final List<AnimeDataResponseDTO> preRelease = CommonParser.getInfoTPost(
      document.querySelectorAll('#new-home .TPostMv'),
      now,
    );
    final List<AnimeDataResponseDTO> hotUpdates = CommonParser.getInfoTPost(
      document.querySelectorAll('#hot-home .TPostMv'),
      now,
    );
    final List<AnimeDataResponseDTO> topMovies = CommonParser.getInfoTPost(
      document.querySelectorAll('#showTopPhim .TPost'),
      now,
    );

    return HomeDataCategoriesDTO(
      topMovies: topMovies,
      sliderMovies: sliderMovies,
      latestUpdates: latestUpdates,
      preRelease: preRelease,
      hotUpdates: hotUpdates,
      thisSeason: thisSeason,
    );
  }
}
