import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AnimeRepository)
class AnimeRepositoryImpl implements AnimeRepository {
  const AnimeRepositoryImpl(
    this._animeRemoteDataSource,
    this._episodeSkipRemoteDataSource,
  );
  final AnimeRemoteDataSource _animeRemoteDataSource;
  final EpisodeSkipRemoteDataSource _episodeSkipRemoteDataSource;

  @override
  Future<HomeDataCategoriesEntity> getHomeData() async {
    final html = await _animeRemoteDataSource.getHomeData();
    final data = HomeDataParser.parse(html);
    return data.toEntity();
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
    final data = await compute(PlayDataParser.parse, html);
    return data.toEntity();
  }

  @override
  Future<AnimeDetailEntity> getAnimeDetail(
    String id, {
    CancelToken? cancelToken,
  }) async {
    final html = await _animeRemoteDataSource.getAnimeDetail(
      id,
      cancelToken: cancelToken,
    );
    final data = await compute(AnimeDetailParser.parse, html);
    return data.toEntity();
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
  Future<ListEpisodeResponseEntity> listEpisodes(
    List<String> name, {
    CancelToken? cancelToken,
  }) async {
    final response = await _episodeSkipRemoteDataSource.listEpisodes(
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
    final response = await _episodeSkipRemoteDataSource.skipEpisode(
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
    final data = await compute(SearchResultParser.parse, html);
    return data.toEntity();
  }

  @override
  Future<List<PreSearchItemEntity>> preSearch({required String keyword}) async {
    final html = await _animeRemoteDataSource.preSearch(
      keyword: keyword,
    );
    final data = await compute(PreSearchParser.parse, html);
    return data.map((e) => e.toEntity()).toList();
  }
}
