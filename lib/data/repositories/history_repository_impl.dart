import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: HistoryRepository)
class HistoryRepositoryImpl implements HistoryRepository {
  HistoryRepositoryImpl(
    this._historyRemoteDataSource,
    this._authLocalDataSource,
  );
  final HistoryRemoteDataSource _historyRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  @override
  Future<List<QueryHistoryEntity>> queryHistory({
    required int page,
    int? size,
  }) async {
    final userSession = await _authLocalDataSource.getLocalUserSession();
    final result = await _historyRemoteDataSource.queryHistory(
      userUid: userSession.id!,
      page: page,
      size: size ?? 30,
    );
    return result.map((e) => e.toEntity()).toList();
  }

  @override
  Future<ChapterProgressEntity?> getLastChap({
    required String seasonId,
  }) async {
    final userSession = await _authLocalDataSource.getLocalUserSession();
    final result = await _historyRemoteDataSource.getLastChap(
      userUid: userSession.id!,
      seasonId: seasonId,
    );
    return result?.toEntity();
  }

  @override
  Future<void> setSingleProgress(SetSingleProgressEntity data) async {
    final userSession = await _authLocalDataSource.getLocalUserSession();
    await _historyRemoteDataSource.setSingleProgress(
      data.copyWith(userUid: userSession.id!).toDTO(),
    );
  }

  @override
  Future<ChapterProgressEntity?> getSingleProgress({
    required String chapId,
    required String seasonId,
  }) async {
    final userSession = await _authLocalDataSource.getLocalUserSession();
    final result = await _historyRemoteDataSource.getSingleProgress(
      userUid: userSession.id!,
      chapId: chapId,
      seasonId: seasonId,
    );
    return result?.toEntity();
  }
}