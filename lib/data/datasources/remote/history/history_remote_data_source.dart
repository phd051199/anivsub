import 'package:anivsub/data/data_exports.dart';

abstract class HistoryRemoteDataSource {
  Future<List<QueryHistoryDTO>> queryHistory({
    required String userUid,
    required int page,
    required int size,
  });
  Future<ChapterProgressDTO?> getLastChap({
    required String userUid,
    required String seasonId,
  });
  Future<void> setSingleProgress(SetSingleProgressDTO dto);
  Future<ChapterProgressDTO?> getSingleProgress({
    required String userUid,
    required String seasonId,
    required String chapId,
  });
}
