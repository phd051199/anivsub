import 'package:anivsub/shared/di/shared_export.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

const sk9animetvApiUrl = 'https://sk-9animetv.dph.workers.dev';
const skHianimeApiUrl = 'https://sk-hianime.dph.workers.dev';
const fbBaseUrl = 'https://www.facebook.com';

final hostCurl = dotenv.get('HOST_CURL');
final ogHostCurl = Uri.parse(getItHost)
    .replace(
      scheme: 'http',
      host: '${Uri.parse(getItHost).host.split('.').first}.tv',
    )
    .toString();
