const kSPUserToken = 'kUserToken';
const kSPThemeMode = 'kThemeMode';

final decryptHlsUrl = 'https://decrypt-hls.dph.workers.dev';
const skApiUrl1 = 'https://opend-9animetv.animevsub.eu.org';
const skApiUrl2 = 'https://sk-hianime.animevsub.eu.org';
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
      'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/115.0.0.0 Safari/537.36',
  'accept':
      'text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8,application/signed-exchange;v=b3;q=0.9',
  'accept-language': 'vi-VN,vi;q=0.9,en;q=0.8,ja;q=0.7',
  'cache-control': 'max-age=0',
  'dnt': '1',
  'sec-ch-ua':
      '"Google Chrome";v="105", "Not)A;Brand";v="8", "Chromium";v="105"',
  'sec-ch-ua-mobile': '?0',
  'sec-ch-ua-platform': 'Windows',
  'sec-fetch-dest': 'document',
  'sec-fetch-mode': 'navigate',
  'sec-fetch-site': 'none',
  'sec-fetch-user': '?1',
  'sec-gpc': '1',
  'upgrade-insecure-requests': '1',
  'referer': hostCurl,
};
