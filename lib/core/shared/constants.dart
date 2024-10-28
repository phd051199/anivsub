import 'package:get_it/get_it.dart';

const kSPUserToken = 'kUserToken';
const kSPThemeMode = 'kThemeMode';

const decryptHlsUrl = 'https://decrypt-hls.dph.workers.dev';
const sk9animetvApiUrl = 'https://sk-9animetv.dph.workers.dev';
const skHianimeApiUrl = 'https://sk-hianime.dph.workers.dev';
const fbBaseUrl = 'https://www.facebook.com';

final hostCurl = GetIt.I.get<String>(instanceName: 'HOST_CURL');
final ogHostCurl = Uri.parse(hostCurl)
    .replace(
      scheme: 'http',
      host: '${Uri.parse(hostCurl).host.split('.').first}.tv',
    )
    .toString();

const headers = {
  'user-agent':
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
  'accept':
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
  'cache-control': 'max-age=0',
  'dnt': '1',
  'sec-ch-ua':
      '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
  'sec-ch-ua-mobile': '?0',
  'sec-ch-ua-platform': 'macOS',
  'sec-ch-ua-platform-version': '15.0.1',
  'sec-fetch-dest': 'empty',
  'sec-fetch-mode': 'cors',
  'sec-fetch-site': 'same-origin',
  'sec-fetch-user': '?1',
  'sec-gpc': '1',
  'upgrade-insecure-requests': '1',
};

const fbHeaders = {
  'content-type': 'application/x-www-form-urlencoded',
  'dpr': '1',
  'pragma': 'no-cache',
  'sec-ch-prefers-color-scheme': 'dark',
  'sec-ch-ua-mobile': '?0',
  'sec-gpc': '1',
  'viewport-width': '727',
  'x-asbd-id': '129477',
  'Referrer-Policy': 'origin-when-cross-origin',
  'user-agent':
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
  'accept':
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
  'cache-control': 'max-age=0',
  'dnt': '1',
  'sec-ch-ua':
      '"Google Chrome";v="129", "Not?A_Brand";v="8", "Chromium";v="129"',
  'sec-ch-ua-platform': 'macOS',
  'sec-ch-ua-platform-version': '15.0.1',
  'sec-fetch-dest': 'empty',
  'sec-fetch-mode': 'cors',
  'sec-fetch-site': 'same-origin',
  'sec-fetch-user': '?1',
  'upgrade-insecure-requests': '1',
};
