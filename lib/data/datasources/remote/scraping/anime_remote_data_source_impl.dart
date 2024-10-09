import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRemoteDataSource)
class AnimeRemoteDataSourceImpl implements AnimeRemoteDataSource {
  final ScrapingClient client;
  AnimeRemoteDataSourceImpl({required this.client});

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
