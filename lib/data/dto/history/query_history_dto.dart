import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_history_dto.freezed.dart';
part 'query_history_dto.g.dart';

@freezed
class QueryHistoryDTO extends BaseDTO<QueryHistoryEntity>
    with _$QueryHistoryDTO {
  const factory QueryHistoryDTO({
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'season') String? season,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'poster') String? poster,
    @JsonKey(name: 'season_name') String? seasonName,
    @JsonKey(name: 'watch_updated_at') DateTime? watchUpdatedAt,
    @JsonKey(name: 'watch_name') String? watchName,
    @JsonKey(name: 'watch_id') String? watchId,
    @JsonKey(name: 'watch_cur') double? watchCur,
    @JsonKey(name: 'watch_dur') double? watchDur,
  }) = _QueryHistoryDTO;

  const QueryHistoryDTO._();

  factory QueryHistoryDTO.fromJson(Map<String, dynamic> json) =>
      _$QueryHistoryDTOFromJson(json);

  @override
  List<Object?> get props => [
        createdAt,
        season,
        name,
        poster,
        seasonName,
        watchUpdatedAt,
        watchName,
        watchId,
        watchCur,
        watchDur,
      ];

  @override
  QueryHistoryEntity toEntity() {
    return QueryHistoryEntity(
      createdAt: createdAt,
      season: season,
      name: name,
      poster: poster,
      seasonName: seasonName,
      watchUpdatedAt: watchUpdatedAt,
      watchName: watchName,
      watchId: watchId,
      watchCur: watchCur,
      watchDur: watchDur,
    );
  }
}
