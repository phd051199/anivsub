import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'chapter_progress_dto.freezed.dart';
part 'chapter_progress_dto.g.dart';

@freezed
class ChapterProgressDTO extends BaseDTO<ChapterProgressEntity>
    with _$ChapterProgressDTO {
  const factory ChapterProgressDTO({
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'cur') double? cur,
    @JsonKey(name: 'dur') double? dur,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'chap_id') String? chapId,
  }) = _ChapterProgressDTO;

  const ChapterProgressDTO._();

  factory ChapterProgressDTO.fromJson(Map<String, dynamic> json) =>
      _$ChapterProgressDTOFromJson(json);

  @override
  List<Object?> get props => [createdAt, cur, dur, name, updatedAt, chapId];

  @override
  ChapterProgressEntity toEntity() => ChapterProgressEntity(
        createdAt: createdAt,
        cur: cur,
        dur: dur,
        name: name,
        updatedAt: updatedAt,
        chapId: chapId,
      );
}
