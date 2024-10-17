import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
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
  Future<HomeDataCategoriesEntity> getHomeData() async {
    final html = await _animeRemoteDataSource.getHomeData();
    return HomeDataParser.parse(html);
  }

  @override
  Future<PlayDataEntity> getPlayData(
    String id, {
    CancelToken? cancelToken,
  }) async {
    final html = await _animeRemoteDataSource.getPlayData(
      id,
      cancelToken: cancelToken,
    );
    return PlayDataParser.parse(html);
  }

  @override
  Future<AnimeDetailEntity> getAnimeDetail(String id) async {
    final html = await _animeRemoteDataSource.getAnimeDetail(id);
    return AnimeDetailParser.parse(html);
  }

  @override
  Future<GetEncryptedHlsResponseEntity> getEncryptedHls(
    GetEncryptedHlsRequestEntity bodyRequestEntity, {
    CancelToken? cancelToken,
  }) async {
    final response = await _animeRemoteDataSource.getEncryptedHls(
      bodyRequestEntity.toDTO(),
      cancelToken: cancelToken,
    );
    return response.toEntity();
  }

  @override
  Future<String> decryptHls(
    String hash, {
    CancelToken? cancelToken,
  }) async {
    final link = await _decryptHlsService.decryptHls(
      DecryptHlsRequestDTO(hash: hash),
      cancelToken: cancelToken,
    );
    return link;
  }

  @override
  Future<ListEpisodeResponseEntity> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  }) async {
    final response = await _openDRemoteDataSource.listEpisodes(
      name,
      cancelToken: cancelToken,
    );
    return response.toEntity();
  }

  @override
  Future<EpisodeSkipResponseEntity> skipEpisode(
    String id, {
    CancelToken? cancelToken,
  }) async {
    final response = await _openDRemoteDataSource.skipEpisode(
      id,
      cancelToken: cancelToken,
    );
    return response.toEntity();
  }

  @override
  Future<SearchResultEntity> search({
    required String keyword,
    int? page,
  }) async {
    final html = await _animeRemoteDataSource.search(
      keyword: keyword,
      page: page ?? 1,
    );
    return SearchResultParser.parse(html);
  }

  @override
  Future<List<PreSearchItemEntity>> preSearch({required String keyword}) async {
    final html = await _animeRemoteDataSource.preSearch(
      keyword: keyword,
    );
    return PreSearchParser.parse(html);
  }
}
