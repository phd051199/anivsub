import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

import '../data_exports.dart';

class SearchResultParser {
  const SearchResultParser._();

  static SearchResultDTO parse(String html) {
    final Document document = parser.parse(html);
    final int now = DateTime.now().millisecondsSinceEpoch;

    final List<Element> movieList = document.querySelectorAll('.MovieList');
    List<AnimeDataResponseDTO> items = [];

    if (movieList.isNotEmpty) {
      items = CommonParser.getInfoTPost(
        movieList.first.querySelectorAll('.TPostMv'),
        now,
      );
    }
    final int curPage = int.tryParse(
          document.querySelector('.current')?.attributes['data'] ??
              document.querySelector('.current')?.attributes['title'] ??
              '1',
        ) ??
        1;
    final int maxPage = int.tryParse(
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

    return SearchResultDTO(
      items: items,
      curPage: curPage,
      maxPage: maxPage,
    );
  }
}
