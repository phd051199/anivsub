import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_progress_entity.freezed.dart';
part 'chapter_progress_entity.g.dart';

@freezed
class ChapterProgressEntity extends BaseEntity<ChapterProgressDTO>
    with _$ChapterProgressEntity {
  const factory ChapterProgressEntity({
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'cur') required double cur,
    @JsonKey(name: 'dur') required double dur,
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'chap_id') required String chapId,
  }) = _ChapterProgressEntity;

  const ChapterProgressEntity._();

  factory ChapterProgressEntity.fromJson(Map<String, dynamic> json) =>
      _$ChapterProgressEntityFromJson(json);

  @override
  List<Object?> get props => [createdAt, cur, dur, name, updatedAt, chapId];

  @override
  ChapterProgressDTO toDTO() => ChapterProgressDTO(
        createdAt: createdAt,
        cur: cur,
        dur: dur,
        name: name,
        updatedAt: updatedAt,
        chapId: chapId,
      );
}
