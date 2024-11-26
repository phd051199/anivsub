import 'package:anivsub/shared/shared_exports.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart' as parser;

class AccountInfoParser {
  const AccountInfoParser._();

  static String parseError(String html) {
    final document = parser.parse(html);
    return document.querySelector('.alert-error')?.text.split(':')[1].trim() ??
        '';
  }

  static Map<String, dynamic> parse(String html) {
    final document = parser.parse(html);

    final avatar = _parseAvatar(document);
    final name = _parseName(document);
    final email = _parseEmail(document);
    final username = _parseUsername(document);
    final sex = _parseSex(document);

    return {
      'avatar': avatar,
      'name': name,
      'email': email,
      'username': username,
      'sex': sex,
    };
  }

  static String? _parseAvatar(Document document) {
    final avatarElement = document.querySelector('.profile-userpic img');
    final avatarSrc = avatarElement?.attributes['src'];
    if (avatarSrc != null) {
      return avatarSrc.replaceFirst(
        RegExp(r'animevietsub\.\w+/'),
        '${getItHost.substring(getItHost.indexOf('://') + 3)}/',
      );
    }
    return null;
  }

  static String _parseName(Document document) {
    return document.querySelector('.profile-usertitle-name')?.text.trim() ?? '';
  }

  static String _parseEmail(Document document) {
    return document.querySelector('#email')?.attributes['value'] ?? '';
  }

  static String _parseUsername(Document document) {
    return document.querySelector('#hoten')?.attributes['value'] ?? '';
  }

  static String _parseSex(Document document) {
    if (document.querySelector('#male')?.attributes['checked'] != null) {
      return 'male';
    } else if (document.querySelector('#female')?.attributes['checked'] !=
        null) {
      return 'female';
    }
    return 'unknown';
  }
}
