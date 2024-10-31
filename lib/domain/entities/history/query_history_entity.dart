import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_history_entity.freezed.dart';
part 'query_history_entity.g.dart';

@freezed
class QueryHistoryEntity extends BaseEntity<QueryHistoryDTO>
    with _$QueryHistoryEntity {
  const factory QueryHistoryEntity({
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
  }) = _QueryHistoryEntity;

  const QueryHistoryEntity._();

  factory QueryHistoryEntity.fromJson(Map<String, dynamic> json) =>
      _$QueryHistoryEntityFromJson(json);

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
  QueryHistoryDTO toDTO() {
    return QueryHistoryDTO(
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
