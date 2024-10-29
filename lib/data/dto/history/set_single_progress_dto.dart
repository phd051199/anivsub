import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_single_progress_dto.freezed.dart';
part 'set_single_progress_dto.g.dart';

@freezed
class SetSingleProgressDTO extends BaseDTO<SetSingleProgressEntity>
    with _$SetSingleProgressDTO {
  const factory SetSingleProgressDTO({
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
  }) = _SetSingleProgressDTO;

  const SetSingleProgressDTO._();

  factory SetSingleProgressDTO.fromJson(Map<String, dynamic> json) =>
      _$SetSingleProgressDTOFromJson(json);

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
  SetSingleProgressEntity toEntity() => SetSingleProgressEntity(
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
