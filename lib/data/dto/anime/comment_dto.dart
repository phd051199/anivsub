import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class CommentDTO extends BaseDTO<CommentEntity> {
  const CommentDTO({
    required this.id,
    required this.authorName,
    required this.authorThumbSrc,
    required this.body,
    required this.timestamp,
    required this.likeCount,
    @Default([]) this.replies,
  });

  factory CommentDTO.fromJson(Map<String, dynamic> json) =>
      _$CommentDTOFromJson(json);
  final String id;
  final String authorName;
  final String authorThumbSrc;
  final String body;
  final String timestamp;
  final int likeCount;
  final List<CommentDTO>? replies;

  Map<String, dynamic> toJson() => _$CommentDTOToJson(this);

  @override
  CommentEntity toEntity() => CommentEntity(
        id: id,
        authorName: authorName,
        authorThumbSrc: authorThumbSrc,
        body: body,
        timestamp: timestamp,
        likeCount: likeCount,
        replies: replies?.map((r) => r.toEntity()).toList() ?? [],
      );

  @override
  List<Object?> get props =>
      [id, authorName, authorThumbSrc, body, timestamp, likeCount, replies];

  CommentDTO copyWith({
    String? id,
    String? authorName,
    String? authorThumbSrc,
    String? body,
    String? timestamp,
    int? likeCount,
    List<CommentDTO>? replies,
  }) {
    return CommentDTO(
      id: id ?? this.id,
      authorName: authorName ?? this.authorName,
      authorThumbSrc: authorThumbSrc ?? this.authorThumbSrc,
      body: body ?? this.body,
      timestamp: timestamp ?? this.timestamp,
      likeCount: likeCount ?? this.likeCount,
      replies: replies ?? this.replies,
    );
  }
}
