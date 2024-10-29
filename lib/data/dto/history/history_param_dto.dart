import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'history_param_dto.freezed.dart';
part 'history_param_dto.g.dart';

@freezed
class QueryHistoryParamsDTO extends BaseDTO<QueryHistoryParamsEntity>
    with _$QueryHistoryParamsDTO {
  const factory QueryHistoryParamsDTO({
    @JsonKey(name: 'user_uid') String? userUid,
    int? page,
    int? size,
  }) = _QueryHistoryParamsDTO;

  const QueryHistoryParamsDTO._();

  factory QueryHistoryParamsDTO.fromJson(Map<String, dynamic> json) =>
      _$QueryHistoryParamsDTOFromJson(json);

  @override
  List<Object?> get props => [userUid, page, size];

  @override
  QueryHistoryParamsEntity toEntity() => QueryHistoryParamsEntity(
        userUid: userUid,
        page: page,
        size: size,
      );
}

@freezed
class GetLastChapterParamsDTO extends BaseDTO<GetLastChapterParamsEntity>
    with _$GetLastChapterParamsDTO {
  const factory GetLastChapterParamsDTO({
    @JsonKey(name: 'user_uid') String? userUid,
    @JsonKey(name: 'season_id') String? seasonId,
  }) = _GetLastChapterParamsDTO;

  const GetLastChapterParamsDTO._();

  factory GetLastChapterParamsDTO.fromJson(Map<String, dynamic> json) =>
      _$GetLastChapterParamsDTOFromJson(json);

  @override
  List<Object?> get props => [userUid, seasonId];

  @override
  GetLastChapterParamsEntity toEntity() => GetLastChapterParamsEntity(
        userUid: userUid,
        seasonId: seasonId,
      );
}

@freezed
class GetSingleProgressParamsDTO extends BaseDTO<GetSingleProgressParamsEntity>
    with _$GetSingleProgressParamsDTO {
  const factory GetSingleProgressParamsDTO({
    @JsonKey(name: 'user_uid') String? userUid,
    @JsonKey(name: 'season_id') String? seasonId,
    @JsonKey(name: 'chap_id') String? chapId,
  }) = _GetSingleProgressParamsDTO;

  const GetSingleProgressParamsDTO._();

  factory GetSingleProgressParamsDTO.fromJson(Map<String, dynamic> json) =>
      _$GetSingleProgressParamsDTOFromJson(json);

  @override
  List<Object?> get props => [userUid, seasonId, chapId];

  @override
  GetSingleProgressParamsEntity toEntity() => GetSingleProgressParamsEntity(
        userUid: userUid,
        seasonId: seasonId,
        chapId: chapId,
      );
}
