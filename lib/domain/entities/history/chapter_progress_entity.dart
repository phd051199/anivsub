import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'chapter_progress_entity.freezed.dart';
part 'chapter_progress_entity.g.dart';

@freezed
class ChapterProgressEntity extends BaseEntity<ChapterProgressDTO>
    with _$ChapterProgressEntity {
  const factory ChapterProgressEntity({
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'cur') double? cur,
    @JsonKey(name: 'dur') double? dur,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'chap_id') String? chapId,
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
