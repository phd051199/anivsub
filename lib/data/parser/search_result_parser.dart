import 'package:anivsub/data/parser/common_parser.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

class SearchResultParser {
  static SearchResultEntity parse(String html) {
    final Document document = parser.parse(html);
    final int now = DateTime.now().millisecondsSinceEpoch;

    final List<Element> movieList = document.querySelectorAll('.MovieList');
    List<AnimeDataEntity> items = [];

    if (movieList.isNotEmpty) {
      items = CommonParser.getInfoTPost(
        movieList.first.querySelectorAll('.TPostMv'),
        now,
      );
    }
    int curPage = int.tryParse(
          document.querySelector('.current')?.attributes['data'] ??
              document.querySelector('.current')?.attributes['title'] ??
              '1',
        ) ??
        1;
    int maxPage = int.tryParse(
          document
                  .querySelector(
                    '.larger:last-child, .wp-pagenavi > *:last-child',
                  )
                  ?.attributes['data'] ??
              document
                  .querySelector(
                    '.larger:last-child, .wp-pagenavi > *:last-child',
                  )
                  ?.attributes['title'] ??
              '1',
        ) ??
        1;

    return SearchResultEntity(
      items: items,
      curPage: curPage,
      maxPage: maxPage,
    );
  }
}
