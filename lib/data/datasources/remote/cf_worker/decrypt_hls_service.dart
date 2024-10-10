import 'package:anivsub/data/dto/anime/decrypt_hls_request_dto.dart';

abstract class DecryptHlsService {
  Future<String> decryptHls(DecryptHlsRequestDTO hash);
}
