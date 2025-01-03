import 'package:flutter_dotenv/flutter_dotenv.dart';

import '../shared_exports.dart';

const skApiUrl = 'https://opend-9animetv.animevsub.eu.org';
const fbBaseUrl = 'https://www.facebook.com';

final hostCurl = dotenv.get('HOST_CURL');
final ogHostCurl = Uri.parse(getItHost)
    .replace(
      scheme: 'http',
      host: '${Uri.parse(getItHost).host.split('.').first}.tv',
    )
    .toString();
