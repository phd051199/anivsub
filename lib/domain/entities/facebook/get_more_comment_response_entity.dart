import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'get_more_comment_response_entity.freezed.dart';

@freezed
class GetMoreCommentResponseEntity extends BaseEntity<GetMoreCommentResponseDTO>
    with _$GetMoreCommentResponseEntity {
  const factory GetMoreCommentResponseEntity({
    int? ar,
    PayloadEntity? payload,
    double? lid,
  }) = _GetMoreCommentResponseEntity;

  const GetMoreCommentResponseEntity._();

  @override
  List<Object?> get props => [
        ar,
        payload,
        lid,
      ];

  @override
  GetMoreCommentResponseDTO toDTO() => GetMoreCommentResponseDTO(
        ar: ar,
        payload: payload?.toDTO(),
        lid: lid,
      );
}

@freezed
class PayloadEntity extends BaseEntity<PayloadDTO> with _$PayloadEntity {
  const factory PayloadEntity({
    int? totalCount,
    List<int>? commentIDs,
    String? afterCursor,
    Map<String, IdMapEntity>? idMap,
  }) = _PayloadEntity;

  const PayloadEntity._();

  @override
  List<Object?> get props => [
        totalCount,
        commentIDs,
        afterCursor,
        idMap,
      ];

  @override
  PayloadDTO toDTO() => PayloadDTO(
        totalCount: totalCount,
        commentIDs: commentIDs,
        afterCursor: afterCursor,
        idMap: idMap?.map((key, value) => MapEntry(key, value.toDTO())),
      );
}
