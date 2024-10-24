// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_comment_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostCommentRequestDTOImpl _$$PostCommentRequestDTOImplFromJson(
        Map<String, dynamic> json) =>
    _$PostCommentRequestDTOImpl(
      appId: json['app_id'] as String?,
      limit: json['limit'] as String?,
      user: json['__user'] as String?,
      a: json['__a'] as String?,
      req: json['__req'] as String?,
      hs: json['__hs'] as String?,
      dpr: json['dpr'] as String?,
      ccg: json['__ccg'] as String?,
      rev: json['__rev'] as String?,
      s: json['__s'] as String?,
      hsi: json['__hsi'] as String?,
      dyn: json['__dyn'] as String?,
      csr: json['__csr'] as String?,
      locale: json['locale'] as String?,
      lsd: json['lsd'] as String?,
      jazoest: json['jazoest'] as String?,
      sp: json['__sp'] as String?,
      fbDtsg: json['fb_dtsg'] as String?,
      afterCursor: json['after_cursor'] as String?,
      text: json['text'] as String?,
      attachedPhotoFbid: json['attached_photo_fbid'] as String?,
      attachedStickerFbid: json['attached_sticker_fbid'] as String?,
      postToFeed: json['post_to_feed'] as String?,
      privacyOption: json['privacy_option'] as String?,
    );

Map<String, dynamic> _$$PostCommentRequestDTOImplToJson(
        _$PostCommentRequestDTOImpl instance) =>
    <String, dynamic>{
      'app_id': instance.appId,
      'limit': instance.limit,
      '__user': instance.user,
      '__a': instance.a,
      '__req': instance.req,
      '__hs': instance.hs,
      'dpr': instance.dpr,
      '__ccg': instance.ccg,
      '__rev': instance.rev,
      '__s': instance.s,
      '__hsi': instance.hsi,
      '__dyn': instance.dyn,
      '__csr': instance.csr,
      'locale': instance.locale,
      'lsd': instance.lsd,
      'jazoest': instance.jazoest,
      '__sp': instance.sp,
      'fb_dtsg': instance.fbDtsg,
      'after_cursor': instance.afterCursor,
      'text': instance.text,
      'attached_photo_fbid': instance.attachedPhotoFbid,
      'attached_sticker_fbid': instance.attachedStickerFbid,
      'post_to_feed': instance.postToFeed,
      'privacy_option': instance.privacyOption,
    };
