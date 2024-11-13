import 'package:anivsub/data/data_exports.dart';
import 'package:html/parser.dart' as parser;

class PlayDataParser {
  const PlayDataParser._();

  static PlayDataDTO parse(String html) {
    final document = parser.parse(html);

    final chaps = document
        .querySelectorAll('#list-server .list-episode .episode a')
        .map((element) {
      return ChapDataDTO(
        id: element.attributes['data-id']!,
        play: element.attributes['data-play']!,
        hash: element.attributes['data-hash']!,
        name: element.text.trim(),
      );
    }).toList();

    final scheduleTitle = document
        .querySelector('.schedule-title-main > h4 > strong:nth-child(3)');
    final match = scheduleTitle?.text
        .matchAsPrefix(r'(Thứ [^\s]+|chủ nhật) vào lúc (\d+) giờ (\d+) phút');

    List<int>? update;
    if (match != null) {
      final day = match.group(1);
      final hour = int.parse(match.group(2)!);
      final minute = int.parse(match.group(3)!);

      update = [dayTextToNum(day?.toLowerCase() ?? ''), hour, minute];
    }

    final image = document.querySelector('.Image img')?.attributes['src'] ?? '';
    final poster =
        document.querySelector('.TPostBg img')?.attributes['src'] ?? '';

    return PlayDataDTO(
      chaps: chaps,
      image: image,
      poster: poster,
      update: update,
    );
  }

  static int dayTextToNum(String dayText) {
    const dayMap = {
      'thứ hai': 1,
      'thứ ba': 2,
      'thứ tư': 3,
      'thứ năm': 4,
      'thứ sáu': 5,
      'thứ bảy': 6,
      'chủ nhật': 7,
    };

    return dayMap[dayText.toLowerCase()] ?? 0;
  }
}
