import 'package:anivsub/data/dto/anime/decrypt_hls_request_dto.dart';
import 'package:dio/dio.dart';

abstract class DecryptHlsService {
  Future<String> decryptHls(
    DecryptHlsRequestDTO hash, {
    CancelToken? cancelToken,
  });
}
