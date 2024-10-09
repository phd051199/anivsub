import 'cf_worker_api_client.dart';

abstract class DecryptHlsService {
  Future<String> decryptHls(RequestDTO hash);
}
