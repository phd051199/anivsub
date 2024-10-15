const kSPUserToken = 'kUserToken';
const kSPThemeMode = 'kThemeMode';

final decryptHlsUrl = 'https://decrypt-hls.dph.workers.dev';
const skApiUrl1 = 'https://sk-9animetv.dph.workers.dev';
const skApiUrl2 = 'https://sk-hianime.dph.workers.dev';
final hostCurl = String.fromCharCodes([
  104,
  116,
  116,
  112,
  115,
  58,
  47,
  47,
  97,
  110,
  105,
  109,
  101,
  118,
  105,
  101,
  116,
  115,
  117,
  98,
  46,
  116,
  117,
  98,
  101,
]);

final headers = {
  'user-agent':
      'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36',
  'accept':
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'accept-language': 'en-US,en;q=0.9,vi;q=0.8',
  'cache-control': 'max-age=0',
  'dnt': '1',
  'sec-ch-ua':
      '"Google Chrome";v="129", "Not=A?Brand";v="8", "Chromium";v="129"',
  'sec-ch-ua-mobile': '?0',
  'sec-ch-ua-platform': 'macOS',
  'sec-ch-ua-platform-version': '15.0.1',
  'sec-fetch-dest': 'empty',
  'sec-fetch-mode': 'cors',
  'sec-fetch-site': 'same-origin',
  'sec-fetch-user': '?1',
  'sec-gpc': '1',
  'upgrade-insecure-requests': '1',
  'referer': hostCurl,
};
