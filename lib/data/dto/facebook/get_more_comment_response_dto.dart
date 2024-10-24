import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_more_comment_response_dto.freezed.dart';
part 'get_more_comment_response_dto.g.dart';

@freezed
class GetMoreCommentResponseDTO extends BaseDTO<GetMoreCommentResponseEntity>
    with _$GetMoreCommentResponseDTO {
  const factory GetMoreCommentResponseDTO({
    @JsonKey(name: '__ar') int? ar,
    @JsonKey(name: 'payload') PayloadDTO? payload,
    @JsonKey(name: 'lid') double? lid,
  }) = _GetMoreCommentResponseDTO;

  const GetMoreCommentResponseDTO._();

  factory GetMoreCommentResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$GetMoreCommentResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        ar,
        payload,
        lid,
      ];

  @override
  GetMoreCommentResponseEntity toEntity() => GetMoreCommentResponseEntity(
        ar: ar,
        payload: payload?.toEntity(),
        lid: lid,
      );
}

@freezed
class PayloadDTO extends BaseDTO<PayloadEntity> with _$PayloadDTO {
  const factory PayloadDTO({
    @JsonKey(name: 'totalCount') int? totalCount,
    @JsonKey(name: 'commentIDs') List<int>? commentIDs,
    @JsonKey(name: 'afterCursor') String? afterCursor,
    @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap,
  }) = _PayloadDTO;

  const PayloadDTO._();

  factory PayloadDTO.fromJson(Map<String, dynamic> json) =>
      _$PayloadDTOFromJson(json);

  @override
  List<Object?> get props => [
        totalCount,
        commentIDs,
        afterCursor,
        idMap,
      ];

  @override
  PayloadEntity toEntity() => PayloadEntity(
        totalCount: totalCount,
        commentIDs: commentIDs,
        afterCursor: afterCursor,
        idMap: idMap?.map((key, value) => MapEntry(key, value.toEntity())),
      );
}
