import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl implements AnimeRepository {
  final AnimeRemoteDataSource _animeRemoteDataSource;
  final DecryptHlsService _decryptHlsService;

  AnimeRepositoryImpl(this._animeRemoteDataSource, this._decryptHlsService);

  @override
  Future<HomeDataCategoriesEntity> fetchHomeData() async {
    final String html = await _animeRemoteDataSource.getHomeData();
    return HomeDataParser.parse(html);
  }

  @override
  Future<PlayDataEntity> fetchPlayData(String id) async {
    final String html = await _animeRemoteDataSource.getPlayData(id);
    return PlayDataParser.parse(html);
  }

  @override
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity bodyRequestEntity,
  ) async {
    final response = await _animeRemoteDataSource.getEncryptedHls(
      bodyRequestEntity.toDTO(),
    );
    return response.toEntity();
  }

  @override
  Future<String> decryptHls(String hash) async {
    final link = await _decryptHlsService.decryptHls(RequestDTO(hash: hash));
    return link;
  }
}
