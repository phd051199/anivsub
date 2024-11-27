import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'post_comment_request_dto.freezed.dart';
part 'post_comment_request_dto.g.dart';

@freezed
class PostCommentRequestDTO extends BaseDTO<PostCommentRequestEntity>
    with _$PostCommentRequestDTO {
  const factory PostCommentRequestDTO({
    @JsonKey(name: 'app_id') String? appId,
    String? limit,
    @JsonKey(name: '__user') String? user,
    @JsonKey(name: '__a') String? a,
    @JsonKey(name: '__req') String? req,
    @JsonKey(name: '__hs') String? hs,
    String? dpr,
    @JsonKey(name: '__ccg') String? ccg,
    @JsonKey(name: '__rev') String? rev,
    @JsonKey(name: '__s') String? s,
    @JsonKey(name: '__hsi') String? hsi,
    @JsonKey(name: '__dyn') String? dyn,
    @JsonKey(name: '__csr') String? csr,
    String? locale,
    String? lsd,
    String? jazoest,
    @JsonKey(name: '__sp') String? sp,
    @JsonKey(name: 'fb_dtsg') String? fbDtsg,
    @JsonKey(name: 'after_cursor') String? afterCursor,
    String? text,
    @JsonKey(name: 'attached_photo_fbid') String? attachedPhotoFbid,
    @JsonKey(name: 'attached_sticker_fbid') String? attachedStickerFbid,
    @JsonKey(name: 'post_to_feed') String? postToFeed,
    @JsonKey(name: 'privacy_option') String? privacyOption,
  }) = _PostCommentRequestDTO;

  const PostCommentRequestDTO._();

  factory PostCommentRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$PostCommentRequestDTOFromJson(json);

  @override
  List<Object?> get props => [
        appId,
        limit,
        user,
        a,
        req,
        hs,
        rev,
        hsi,
        dyn,
        csr,
        locale,
        lsd,
        jazoest,
        sp,
        fbDtsg,
        afterCursor,
        text,
        attachedPhotoFbid,
        attachedStickerFbid,
        postToFeed,
        privacyOption,
      ];

  @override
  PostCommentRequestEntity toEntity() => PostCommentRequestEntity(
        appId: appId,
        limit: limit,
        user: user,
        a: a,
        req: req,
        hs: hs,
        rev: rev,
        hsi: hsi,
        dyn: dyn,
        csr: csr,
        locale: locale,
        lsd: lsd,
        jazoest: jazoest,
        sp: sp,
        fbDtsg: fbDtsg,
        afterCursor: afterCursor,
        text: text,
        attachedPhotoFbid: attachedPhotoFbid,
        attachedStickerFbid: attachedStickerFbid,
        postToFeed: postToFeed,
        privacyOption: privacyOption,
      );
}

@freezed
class SetupDataDTO extends BaseDTO<SetupDataEntity> with _$SetupDataDTO {
  const factory SetupDataDTO({
    required CustomHeadersDTO headers,
    required SetupParamsDTO setupParams,
    required GetInitialCommentResponseDTO initResponse,
  }) = _SetupDataDTO;

  const SetupDataDTO._();

  bool get isNotEmpty => setupParams.isNotEmpty;

  @override
  SetupDataEntity toEntity() => SetupDataEntity(
        headers: headers.toEntity(),
        setupParams: setupParams.toEntity(),
        initResponse: initResponse.toEntity(),
      );

  @override
  List<Object?> get props => [headers, setupParams, initResponse];
}

@freezed
class SetupParamsDTO extends BaseDTO<SetupParamsEntity> with _$SetupParamsDTO {
  const factory SetupParamsDTO({
    String? targetID,
    String? appId,
    String? hs,
    String? rev,
    String? hsi,
    required String locale,
    String? lsd,
    String? fbDtsg,
    required String limit,
    required String a,
    required String req,
    required String dpr,
    required String ccg,
    required String s,
    required String dyn,
    required String csr,
    required String jazoest,
    required String sp,
  }) = _SetupParamsDTO;

  const SetupParamsDTO._();

  bool hasNullValues() {
    return [targetID, appId, hs, rev, hsi, lsd].any((value) => value == null);
  }

  bool get isNotEmpty => !hasNullValues();

  @override
  SetupParamsEntity toEntity() => SetupParamsEntity(
        targetID: targetID,
        appId: appId,
        hs: hs,
        rev: rev,
        hsi: hsi,
        lsd: lsd,
        fbDtsg: fbDtsg,
        limit: limit,
        a: a,
        req: req,
        dpr: dpr,
        ccg: ccg,
        s: s,
        dyn: dyn,
        csr: csr,
        jazoest: jazoest,
        sp: sp,
        locale: locale,
      );

  @override
  List<Object?> get props => [
        targetID,
        appId,
        hs,
        rev,
        hsi,
        lsd,
        fbDtsg,
        limit,
        a,
        req,
        dpr,
        ccg,
        s,
        dyn,
        csr,
        jazoest,
        sp,
      ];
}

@freezed
class CustomHeadersDTO extends BaseDTO<CustomHeadersEntity>
    with _$CustomHeadersDTO {
  const factory CustomHeadersDTO({
    required String xFbLsd,
    required String origin,
    required String referer,
    Map<String, String>? custom,
  }) = _CustomHeadersDTO;

  const CustomHeadersDTO._();

  @override
  CustomHeadersEntity toEntity() => CustomHeadersEntity(
        xFbLsd: xFbLsd,
        origin: origin,
        referer: referer,
        custom: custom,
      );

  @override
  List<Object?> get props => [xFbLsd, origin, referer, custom];
}
