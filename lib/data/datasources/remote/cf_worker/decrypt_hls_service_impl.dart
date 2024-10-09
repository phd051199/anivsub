import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: DecryptHlsService)
class DecryptHlsServiceImpl implements DecryptHlsService {
  final CFWorkerApiClient client;
  DecryptHlsServiceImpl({required this.client});

  @override
  Future<String> decryptHls(RequestDTO body) {
    return client.decryptHls(body);
  }
}
