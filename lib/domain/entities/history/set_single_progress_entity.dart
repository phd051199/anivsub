import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_single_progress_entity.freezed.dart';
part 'set_single_progress_entity.g.dart';

@freezed
class SetSingleProgressEntity extends BaseEntity<SetSingleProgressDTO>
    with _$SetSingleProgressEntity {
  const factory SetSingleProgressEntity({
    @JsonKey(name: 'user_uid') String? userUid,
    @JsonKey(name: 'p_name') String? pName,
    @JsonKey(name: 'p_poster') String? pPoster,
    @JsonKey(name: 'season_id') String? seasonId,
    @JsonKey(name: 'p_season_name') String? pSeasonName,
    @JsonKey(name: 'e_cur') double? eCur,
    @JsonKey(name: 'e_dur') int? eDur,
    @JsonKey(name: 'e_name') String? eName,
    @JsonKey(name: 'e_chap') String? eChap,
    @JsonKey(name: 'gmt') @Default('Asia/Ho_Chi_Minh') String? gmt,
  }) = _SetSingleProgressEntity;

  const SetSingleProgressEntity._();

  factory SetSingleProgressEntity.fromJson(Map<String, dynamic> json) =>
      _$SetSingleProgressEntityFromJson(json);

  @override
  List<Object?> get props => [
        userUid,
        pName,
        pPoster,
        seasonId,
        pSeasonName,
        eCur,
        eDur,
        eName,
        eChap,
        gmt,
      ];

  @override
  SetSingleProgressDTO toDTO() => SetSingleProgressDTO(
        userUid: userUid,
        pName: pName,
        pPoster: pPoster,
        seasonId: seasonId,
        pSeasonName: pSeasonName,
        eCur: eCur,
        eDur: eDur,
        eName: eName,
        eChap: eChap,
        gmt: gmt,
      );
}
