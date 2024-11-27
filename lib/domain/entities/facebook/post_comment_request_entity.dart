import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'post_comment_request_entity.freezed.dart';

@freezed
class PostCommentRequestEntity extends BaseEntity<PostCommentRequestDTO>
    with _$PostCommentRequestEntity {
  const factory PostCommentRequestEntity({
    String? appId,
    String? limit,
    String? user,
    String? a,
    String? req,
    String? hs,
    String? dpr,
    String? ccg,
    String? rev,
    String? s,
    String? hsi,
    String? dyn,
    String? csr,
    String? locale,
    String? lsd,
    String? jazoest,
    String? sp,
    String? fbDtsg,
    String? afterCursor,
    String? text,
    String? attachedPhotoFbid,
    String? attachedStickerFbid,
    String? postToFeed,
    String? privacyOption,
  }) = _PostCommentRequestEntity;

  const PostCommentRequestEntity._();

  @override
  List<Object?> get props => [
        appId,
        limit,
        user,
        a,
        req,
        hs,
        dpr,
        ccg,
        rev,
        s,
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
  PostCommentRequestDTO toDTO() => PostCommentRequestDTO(
        appId: appId,
        limit: limit,
        user: user,
        a: a,
        req: req,
        hs: hs,
        dpr: dpr,
        ccg: ccg,
        rev: rev,
        s: s,
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
class SetupDataEntity extends BaseEntity<SetupDataDTO> with _$SetupDataEntity {
  const factory SetupDataEntity({
    required CustomHeadersEntity headers,
    required SetupParamsEntity setupParams,
    required GetInitialCommentResponseEntity initResponse,
  }) = _SetupDataEntity;

  const SetupDataEntity._();

  @override
  List<Object?> get props => [headers, setupParams, initResponse];

  @override
  SetupDataDTO toDTO() => SetupDataDTO(
        headers: headers.toDTO(),
        setupParams: setupParams.toDTO(),
        initResponse: initResponse.toDTO(),
      );

  bool get isNotEmpty => setupParams.isNotEmpty;
}

@freezed
class SetupParamsEntity extends BaseEntity<SetupParamsDTO>
    with _$SetupParamsEntity {
  const factory SetupParamsEntity({
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
  }) = _SetupParamsEntity;

  const SetupParamsEntity._();

  @override
  List<Object?> get props => [
        targetID,
        appId,
        hs,
        rev,
        hsi,
        locale,
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

  @override
  SetupParamsDTO toDTO() => SetupParamsDTO(
        targetID: targetID,
        appId: appId,
        hs: hs,
        rev: rev,
        hsi: hsi,
        locale: locale,
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
      );

  bool hasNullValues() {
    return [targetID, appId, hs, rev, hsi, lsd].any((value) => value == null);
  }

  bool get isNotEmpty => !hasNullValues();
}

@freezed
class CustomHeadersEntity extends BaseEntity<CustomHeadersDTO>
    with _$CustomHeadersEntity {
  const factory CustomHeadersEntity({
    required String xFbLsd,
    required String origin,
    required String referer,
    Map<String, String>? custom,
  }) = _CustomHeadersEntity;

  const CustomHeadersEntity._();

  @override
  List<Object?> get props => [xFbLsd, origin, referer, custom];

  @override
  CustomHeadersDTO toDTO() => CustomHeadersDTO(
        xFbLsd: xFbLsd,
        origin: origin,
        referer: referer,
        custom: custom,
      );
}
