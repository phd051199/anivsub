import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl implements AnimeRepository {
  AnimeRepositoryImpl(
    this._animeRemoteDataSource,
    this._decryptHlsService,
    this._openDRemoteDataSource,
  );
  final AnimeRemoteDataSource _animeRemoteDataSource;
  final DecryptHlsService _decryptHlsService;
  final OpenDRemoteDataSource _openDRemoteDataSource;

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
    final link = await _decryptHlsService.decryptHls(
      DecryptHlsRequestDTO(hash: hash),
    );
    return link;
  }

  @override
  Future<ListEpisodeResponseEntity> listEpisodes(String name) async {
    final response = await _openDRemoteDataSource.listEpisodes(name);
    return response.toEntity();
  }

  @override
  Future<EpisodeSkipResponseEntity> skipEpisode(String id) async {
    final response = await _openDRemoteDataSource.skipEpisode(id);
    return response.toEntity();
  }
}
