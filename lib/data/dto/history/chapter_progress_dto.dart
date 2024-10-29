import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_progress_dto.freezed.dart';
part 'chapter_progress_dto.g.dart';

@freezed
class ChapterProgressDTO extends BaseDTO<ChapterProgressEntity>
    with _$ChapterProgressDTO {
  const factory ChapterProgressDTO({
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'cur') required double cur,
    @JsonKey(name: 'dur') required double dur,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'chap_id') required String chapId,
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
