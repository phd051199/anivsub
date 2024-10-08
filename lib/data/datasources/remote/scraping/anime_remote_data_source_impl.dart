import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRemoteDataSource)
class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  AnimeRemoteDataSourceImpl({required this.client});
  final ScrapingClient client;

  @override
  Future<String> getHomeData() {
    return client.getHomeData();
  }

  @override
  Future<String> getAnimeDetail(String id) {
    return client.getAnimeDetail(id);
  }

  @override
  Future<String> getPlayData(String id) {
    return client.getPlayData(id);
  }

  @override
  Future<GetEncryptedHlsResponseDTO> getEncryptedHls(
    GetEncryptedHlsRequestDTO body,
  ) {
    return client.getEncryptedHls(
      body.id,
      body.play,
      body.link,
      body.backuplinks,
    );
  }
}
