import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/data/dto/anime/decrypt_hls_request_dto.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DecryptHlsService)
class DecryptHlsServiceImpl implements DecryptHlsService {
  DecryptHlsServiceImpl({required this.client});
  final CFWorkerApiClient client;

  @override
  Future<String> decryptHls(DecryptHlsRequestDTO body) {
    return client.decryptHls(body);
  }
}
