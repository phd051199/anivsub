import 'package:anivsub/data/data_exports.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DecryptHlsService)
class DecryptHlsServiceImpl implements DecryptHlsService {
  DecryptHlsServiceImpl({required this.client});
  final CFWorkerApiClient client;

  @override
  Future<String> decryptHls(
    DecryptHlsRequestDTO body, {
    CancelToken? cancelToken,
  }) {
    return client.decryptHls(body, cancelToken: cancelToken);
  }
}
