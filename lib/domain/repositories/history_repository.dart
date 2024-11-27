import '../domain_exports.dart';

abstract class HistoryRepository {
  Future<List<QueryHistoryEntity>> queryHistory({
    required int page,
    int? size,
  });
  Future<ChapterProgressEntity?> getLastChap({
    required String seasonId,
  });
  Future<ChapterProgressEntity?> getSingleProgress({
    required String chapId,
    required String seasonId,
  });
  Future<void> setSingleProgress(SetSingleProgressEntity data);
}
