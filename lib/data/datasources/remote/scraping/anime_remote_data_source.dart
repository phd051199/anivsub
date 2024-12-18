import 'package:dio/dio.dart';

import '../../../data_exports.dart';

abstract class AnimeRemoteDataSource {
  Future<String> getHomeData();
  Future<String> getAnimeDetail(String id, {CancelToken? cancelToken});
  Future<String> getPlayData(String id, {CancelToken? cancelToken});
  Future<String> search({required String keyword, int page});
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    GetEncryptedHlsRequestDTO body, {
    CancelToken? cancelToken,
  });
  Future<String> preSearch({required String keyword, int ajaxSearch});
}
