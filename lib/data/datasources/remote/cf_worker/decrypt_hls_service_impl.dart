import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DecryptHlsService)
class DecryptHlsServiceImpl implements DecryptHlsService {
  DecryptHlsServiceImpl({required this.client});
  final CFWorkerApiClient client;

  @override
  Future<String> decryptHls(RequestDTO body) {
    return client.decryptHls(body);
  }
}
