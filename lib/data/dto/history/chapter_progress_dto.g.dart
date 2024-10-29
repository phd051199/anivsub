// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter_progress_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChapterProgressDTOImpl _$$ChapterProgressDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$ChapterProgressDTOImpl(
      createdAt: DateTime.parse(json['created_at'] as String),
      cur: (json['cur'] as num).toDouble(),
      dur: (json['dur'] as num).toDouble(),
      name: json['name'] as String,
      updatedAt: DateTime.parse(json['updated_at'] as String),
      chapId: json['chap_id'] as String,
    );

Map<String, dynamic> _$$ChapterProgressDTOImplToJson(
        _$ChapterProgressDTOImpl instance) =>
    <String, dynamic>{
      'created_at': instance.createdAt.toIso8601String(),
      'cur': instance.cur,
      'dur': instance.dur,
      'name': instance.name,
      'updated_at': instance.updatedAt.toIso8601String(),
      'chap_id': instance.chapId,
    };
