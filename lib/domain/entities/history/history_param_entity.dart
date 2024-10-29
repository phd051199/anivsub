import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_param_entity.freezed.dart';
part 'history_param_entity.g.dart';

@freezed
class QueryHistoryParamsEntity extends BaseEntity<QueryHistoryParamsDTO>
    with _$QueryHistoryParamsEntity {
  const factory QueryHistoryParamsEntity({
    @JsonKey(name: 'user_uid') String? userUid,
    int? page,
    int? size,
  }) = _QueryHistoryParamsEntity;

  const QueryHistoryParamsEntity._();

  factory QueryHistoryParamsEntity.fromJson(Map<String, dynamic> json) =>
      _$QueryHistoryParamsEntityFromJson(json);

  @override
  List<Object?> get props => [userUid, page, size];

  @override
  QueryHistoryParamsDTO toDTO() => QueryHistoryParamsDTO(
        userUid: userUid,
        page: page,
        size: size,
      );
}

@freezed
class GetLastChapterParamsEntity extends BaseEntity<GetLastChapterParamsDTO>
    with _$GetLastChapterParamsEntity {
  const factory GetLastChapterParamsEntity({
    @JsonKey(name: 'user_uid') String? userUid,
    @JsonKey(name: 'season_id') String? seasonId,
  }) = _GetLastChapterParamsEntity;

  const GetLastChapterParamsEntity._();

  factory GetLastChapterParamsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetLastChapterParamsEntityFromJson(json);

  @override
  List<Object?> get props => [userUid, seasonId];

  @override
  GetLastChapterParamsDTO toDTO() => GetLastChapterParamsDTO(
        userUid: userUid,
        seasonId: seasonId,
      );
}

@freezed
class GetSingleProgressParamsEntity
    extends BaseEntity<GetSingleProgressParamsDTO>
    with _$GetSingleProgressParamsEntity {
  const factory GetSingleProgressParamsEntity({
    @JsonKey(name: 'user_uid') String? userUid,
    @JsonKey(name: 'season_id') String? seasonId,
    @JsonKey(name: 'chap_id') String? chapId,
  }) = _GetSingleProgressParamsEntity;

  const GetSingleProgressParamsEntity._();

  factory GetSingleProgressParamsEntity.fromJson(Map<String, dynamic> json) =>
      _$GetSingleProgressParamsEntityFromJson(json);

  @override
  List<Object?> get props => [userUid, seasonId, chapId];

  @override
  GetSingleProgressParamsDTO toDTO() => GetSingleProgressParamsDTO(
        userUid: userUid,
        seasonId: seasonId,
        chapId: chapId,
      );
}
