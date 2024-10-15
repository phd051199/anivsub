import 'package:anivsub/data/parser/common_parser.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;

class PreSearchParser {
  static List<PreSearchItemEntity> parse(String htmlString) {
    final document = parser.parse(htmlString);
    final items = document.querySelectorAll('li:not(.ss-bottom)');

    return items.map((li) {
      final anchor = li.querySelector('a');
      final image = _extractImage(anchor);
      final path = CommonParser.getPathName(anchor?.attributes['href'] ?? '');
      final name = li.querySelector('.ss-title')?.text ?? '';
      final status = li.querySelector('p')?.text ?? '';

      return PreSearchItemEntity(
        image: image,
        path: path,
        name: name,
        status: status,
      );
    }).toList();
  }

  static String _extractImage(dom.Element? anchor) {
    if (anchor == null) return '';

    final style = anchor.attributes['style'] ?? '';
    final bgImagePart = style.split(';').firstWhere(
          (item) => item.trim().startsWith('background-image'),
          orElse: () => '',
        );

    if (bgImagePart.isEmpty) return '';

    final regex = RegExp(r'url\(["]?(.*?)["]?\)');
    final match = regex.firstMatch(bgImagePart);
    final urlPart = match?.group(1)?.trim() ?? '';

    return urlPart.replaceAll('\'', '');
  }
}
