import 'package:flutter_dotenv/flutter_dotenv.dart';

const kSPUserToken = 'kUserToken';
const kSPThemeMode = 'kThemeMode';

final decryptHlsUrl = 'https://decrypt-hls.dph.workers.dev';
const skApiUrl1 = 'https://sk-9animetv.dph.workers.dev';
const skApiUrl2 = 'https://sk-hianime.dph.workers.dev';

final hostCurl = dotenv.get('HOST_CURL');

final headers = {
  'user-agent': String.fromCharCodes([
    77,
    111,
    122,
    105,
    108,
    108,
    97,
    47,
    53,
    46,
    48,
    32,
    40,
    77,
    97,
    99,
    105,
    110,
    116,
    111,
    115,
    104,
    59,
    32,
    73,
    110,
    116,
    101,
    108,
    32,
    77,
    97,
    99,
    32,
    79,
    83,
    32,
    88,
    32,
    49,
    48,
    95,
    49,
    53,
    95,
    55,
    41,
    32,
    65,
    112,
    112,
    108,
    101,
    87,
    101,
    98,
    75,
    105,
    116,
    47,
    53,
    51,
    55,
    46,
    51,
    54,
    32,
    40,
    75,
    72,
    84,
    77,
    76,
    44,
    32,
    108,
    105,
    107,
    101,
    32,
    71,
    101,
    99,
    107,
    111,
    41,
    32,
    67,
    104,
    114,
    111,
    109,
    101,
    47,
    49,
    50,
    57,
    46,
    48,
    46,
    48,
    46,
    48,
    32,
    83,
    97,
    102,
    97,
    114,
    105,
    47,
    53,
    51,
    55,
    46,
    51,
    54,
  ]),
  'accept': String.fromCharCodes([
    116,
    101,
    120,
    116,
    47,
    104,
    116,
    109,
    108,
    44,
    97,
    112,
    112,
    108,
    105,
    99,
    97,
    116,
    105,
    111,
    110,
    47,
    120,
    104,
    116,
    109,
    108,
    43,
    120,
    109,
    108,
    44,
    97,
    112,
    112,
    108,
    105,
    99,
    97,
    116,
    105,
    111,
    110,
    47,
    120,
    109,
    108,
    59,
    113,
    61,
    48,
    46,
    57,
    44,
    105,
    109,
    97,
    103,
    101,
    47,
    97,
    118,
    105,
    102,
    44,
    105,
    109,
    97,
    103,
    101,
    47,
    119,
    101,
    98,
    112,
    44,
    105,
    109,
    97,
    103,
    101,
    47,
    97,
    112,
    110,
    103,
    44,
    42,
    47,
    42,
    59,
    113,
    61,
    48,
    46,
    56,
    44,
    97,
    112,
    112,
    108,
    105,
    99,
    97,
    116,
    105,
    111,
    110,
    47,
    115,
    105,
    103,
    110,
    101,
    100,
    45,
    101,
    120,
    99,
    104,
    97,
    110,
    103,
    101,
    59,
    118,
    61,
    98,
    51,
    59,
    113,
    61,
    48,
    46,
    57,
  ]),
  'accept-language': String.fromCharCodes([
    101,
    110,
    45,
    85,
    83,
    44,
    101,
    110,
    59,
    113,
    61,
    48,
    46,
    57,
    44,
    118,
    105,
    59,
    113,
    61,
    48,
    46,
    56,
  ]),
  'cache-control':
      String.fromCharCodes([109, 97, 120, 45, 97, 103, 101, 61, 48]),
  'dnt': String.fromCharCodes([49]),
  'sec-ch-ua': String.fromCharCodes([
    34,
    71,
    111,
    111,
    103,
    108,
    101,
    32,
    67,
    104,
    114,
    111,
    109,
    101,
    34,
    59,
    118,
    61,
    34,
    49,
    50,
    57,
    34,
    44,
    32,
    34,
    78,
    111,
    116,
    61,
    65,
    63,
    66,
    114,
    97,
    110,
    100,
    34,
    59,
    118,
    61,
    34,
    56,
    34,
    44,
    32,
    34,
    67,
    104,
    114,
    111,
    109,
    105,
    117,
    109,
    34,
    59,
    118,
    61,
    34,
    49,
    50,
    57,
    34,
  ]),
  'sec-ch-ua-mobile': String.fromCharCodes([63, 48]),
  'sec-ch-ua-platform': String.fromCharCodes([109, 97, 99, 79, 83]),
  'sec-ch-ua-platform-version': String.fromCharCodes([49, 53, 46, 48, 46, 49]),
  'sec-fetch-dest': String.fromCharCodes([101, 109, 112, 116, 121]),
  'sec-fetch-mode': String.fromCharCodes([99, 111, 114, 115]),
  'sec-fetch-site': String.fromCharCodes(
    [115, 97, 109, 101, 45, 111, 114, 105, 103, 105, 110],
  ),
  'sec-fetch-user': String.fromCharCodes([63, 49]),
  'sec-gpc': String.fromCharCodes([49]),
  'upgrade-insecure-requests': String.fromCharCodes([49]),
  'referer': hostCurl,
};
