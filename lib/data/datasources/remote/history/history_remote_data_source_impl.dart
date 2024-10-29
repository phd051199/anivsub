import 'package:anivsub/core/utils/utils.dart';
import 'package:anivsub/data/data_exports.dart';
import 'package:injectable/injectable.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

@LazySingleton(as: HistoryRemoteDataSource)
class HistoryRemoteDataSourceImpl implements HistoryRemoteDataSource {
  const HistoryRemoteDataSourceImpl(this._client);
  final SupabaseClient _client;

  @override
  Future<List<QueryHistoryDTO>> queryHistory({
    required String userUid,
    required int page,
    required int size,
  }) async {
    final response = await _client.rpc<List>(
      RpcFunction.queryHistory.name,
      params: QueryHistoryParamsDTO(
        userUid: userUid,
        page: page,
        size: size,
      ).toJson(),
    );
    return response.map((e) => QueryHistoryDTO.fromJson(e)).toList();
  }

  @override
  Future<ChapterProgressDTO?> getLastChap({
    required String userUid,
    required String seasonId,
  }) async {
    final response = await _client
        .rpc(
          RpcFunction.getLastChapter.name,
          params: GetLastChapterParamsDTO(
            userUid: userUid,
            seasonId: seasonId,
          ).toJson(),
        )
        .maybeSingle()
        .onError((e, __) {
      Log.debug(e);
      return null;
    });

    if (response == null) return null;
    return ChapterProgressDTO.fromJson(response);
  }

  @override
  Future<void> setSingleProgress(SetSingleProgressDTO dto) async {
    await _client.rpc(
      RpcFunction.setSingleProgress.name,
      params: dto.toJson(),
    );
  }

  @override
  Future<ChapterProgressDTO?> getSingleProgress({
    required String userUid,
    required String seasonId,
    required String chapId,
  }) async {
    final response = await _client
        .rpc(
          RpcFunction.getSingleProgress.name,
          params: GetSingleProgressParamsDTO(
            userUid: userUid,
            seasonId: seasonId,
            chapId: chapId,
          ).toJson(),
        )
        .maybeSingle()
        .onError((_, __) => null);

    if (response == null) return null;
    return ChapterProgressDTO.fromJson(response);
  }
}

enum RpcFunction {
  setSingleProgress,
  queryHistory,
  getLastChapter,
  getSingleProgress,
}

extension RpcFunctionExtension on RpcFunction {
  String get name => switch (this) {
        RpcFunction.setSingleProgress => 'set_single_progress',
        RpcFunction.queryHistory => 'query_history',
        RpcFunction.getLastChapter => 'get_last_chap',
        RpcFunction.getSingleProgress => 'get_single_progress',
      };
}
