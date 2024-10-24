// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_initial_comment_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetInitialCommentResponseDTO _$GetInitialCommentResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _GetInitialCommentResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$GetInitialCommentResponseDTO {
  @JsonKey(name: 'comments')
  CommentsDTO? get comments => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaDTO? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'initialOrdering')
  String? get initialOrdering => throw _privateConstructorUsedError;
  @JsonKey(name: 'rankingAllowed')
  bool? get rankingAllowed => throw _privateConstructorUsedError;

  /// Serializes this GetInitialCommentResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetInitialCommentResponseDTOCopyWith<GetInitialCommentResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInitialCommentResponseDTOCopyWith<$Res> {
  factory $GetInitialCommentResponseDTOCopyWith(
          GetInitialCommentResponseDTO value,
          $Res Function(GetInitialCommentResponseDTO) then) =
      _$GetInitialCommentResponseDTOCopyWithImpl<$Res,
          GetInitialCommentResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'comments') CommentsDTO? comments,
      @JsonKey(name: 'meta') MetaDTO? meta,
      @JsonKey(name: 'initialOrdering') String? initialOrdering,
      @JsonKey(name: 'rankingAllowed') bool? rankingAllowed});

  $CommentsDTOCopyWith<$Res>? get comments;
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$GetInitialCommentResponseDTOCopyWithImpl<$Res,
        $Val extends GetInitialCommentResponseDTO>
    implements $GetInitialCommentResponseDTOCopyWith<$Res> {
  _$GetInitialCommentResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? meta = freezed,
    Object? initialOrdering = freezed,
    Object? rankingAllowed = freezed,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as CommentsDTO?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      initialOrdering: freezed == initialOrdering
          ? _value.initialOrdering
          : initialOrdering // ignore: cast_nullable_to_non_nullable
              as String?,
      rankingAllowed: freezed == rankingAllowed
          ? _value.rankingAllowed
          : rankingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommentsDTOCopyWith<$Res>? get comments {
    if (_value.comments == null) {
      return null;
    }

    return $CommentsDTOCopyWith<$Res>(_value.comments!, (value) {
      return _then(_value.copyWith(comments: value) as $Val);
    });
  }

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GetInitialCommentResponseDTOImplCopyWith<$Res>
    implements $GetInitialCommentResponseDTOCopyWith<$Res> {
  factory _$$GetInitialCommentResponseDTOImplCopyWith(
          _$GetInitialCommentResponseDTOImpl value,
          $Res Function(_$GetInitialCommentResponseDTOImpl) then) =
      __$$GetInitialCommentResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'comments') CommentsDTO? comments,
      @JsonKey(name: 'meta') MetaDTO? meta,
      @JsonKey(name: 'initialOrdering') String? initialOrdering,
      @JsonKey(name: 'rankingAllowed') bool? rankingAllowed});

  @override
  $CommentsDTOCopyWith<$Res>? get comments;
  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$GetInitialCommentResponseDTOImplCopyWithImpl<$Res>
    extends _$GetInitialCommentResponseDTOCopyWithImpl<$Res,
        _$GetInitialCommentResponseDTOImpl>
    implements _$$GetInitialCommentResponseDTOImplCopyWith<$Res> {
  __$$GetInitialCommentResponseDTOImplCopyWithImpl(
      _$GetInitialCommentResponseDTOImpl _value,
      $Res Function(_$GetInitialCommentResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
    Object? meta = freezed,
    Object? initialOrdering = freezed,
    Object? rankingAllowed = freezed,
  }) {
    return _then(_$GetInitialCommentResponseDTOImpl(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as CommentsDTO?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      initialOrdering: freezed == initialOrdering
          ? _value.initialOrdering
          : initialOrdering // ignore: cast_nullable_to_non_nullable
              as String?,
      rankingAllowed: freezed == rankingAllowed
          ? _value.rankingAllowed
          : rankingAllowed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetInitialCommentResponseDTOImpl extends _GetInitialCommentResponseDTO {
  const _$GetInitialCommentResponseDTOImpl(
      {@JsonKey(name: 'comments') this.comments,
      @JsonKey(name: 'meta') this.meta,
      @JsonKey(name: 'initialOrdering') this.initialOrdering,
      @JsonKey(name: 'rankingAllowed') this.rankingAllowed})
      : super._();

  factory _$GetInitialCommentResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetInitialCommentResponseDTOImplFromJson(json);

  @override
  @JsonKey(name: 'comments')
  final CommentsDTO? comments;
  @override
  @JsonKey(name: 'meta')
  final MetaDTO? meta;
  @override
  @JsonKey(name: 'initialOrdering')
  final String? initialOrdering;
  @override
  @JsonKey(name: 'rankingAllowed')
  final bool? rankingAllowed;

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetInitialCommentResponseDTOImplCopyWith<
          _$GetInitialCommentResponseDTOImpl>
      get copyWith => __$$GetInitialCommentResponseDTOImplCopyWithImpl<
          _$GetInitialCommentResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetInitialCommentResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _GetInitialCommentResponseDTO
    extends GetInitialCommentResponseDTO {
  const factory _GetInitialCommentResponseDTO(
          {@JsonKey(name: 'comments') final CommentsDTO? comments,
          @JsonKey(name: 'meta') final MetaDTO? meta,
          @JsonKey(name: 'initialOrdering') final String? initialOrdering,
          @JsonKey(name: 'rankingAllowed') final bool? rankingAllowed}) =
      _$GetInitialCommentResponseDTOImpl;
  const _GetInitialCommentResponseDTO._() : super._();

  factory _GetInitialCommentResponseDTO.fromJson(Map<String, dynamic> json) =
      _$GetInitialCommentResponseDTOImpl.fromJson;

  @override
  @JsonKey(name: 'comments')
  CommentsDTO? get comments;
  @override
  @JsonKey(name: 'meta')
  MetaDTO? get meta;
  @override
  @JsonKey(name: 'initialOrdering')
  String? get initialOrdering;
  @override
  @JsonKey(name: 'rankingAllowed')
  bool? get rankingAllowed;

  /// Create a copy of GetInitialCommentResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetInitialCommentResponseDTOImplCopyWith<
          _$GetInitialCommentResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CommentsDTO _$CommentsDTOFromJson(Map<String, dynamic> json) {
  return _CommentsDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentsDTO {
  @JsonKey(name: 'commentIDs')
  List<String>? get commentIDs => throw _privateConstructorUsedError;
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap => throw _privateConstructorUsedError;

  /// Serializes this CommentsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentsDTOCopyWith<CommentsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsDTOCopyWith<$Res> {
  factory $CommentsDTOCopyWith(
          CommentsDTO value, $Res Function(CommentsDTO) then) =
      _$CommentsDTOCopyWithImpl<$Res, CommentsDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'commentIDs') List<String>? commentIDs,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class _$CommentsDTOCopyWithImpl<$Res, $Val extends CommentsDTO>
    implements $CommentsDTOCopyWith<$Res> {
  _$CommentsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentIDs = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_value.copyWith(
      commentIDs: freezed == commentIDs
          ? _value.commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idMap: freezed == idMap
          ? _value.idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsDTOImplCopyWith<$Res>
    implements $CommentsDTOCopyWith<$Res> {
  factory _$$CommentsDTOImplCopyWith(
          _$CommentsDTOImpl value, $Res Function(_$CommentsDTOImpl) then) =
      __$$CommentsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'commentIDs') List<String>? commentIDs,
      @JsonKey(name: 'idMap') Map<String, IdMapDTO>? idMap});
}

/// @nodoc
class __$$CommentsDTOImplCopyWithImpl<$Res>
    extends _$CommentsDTOCopyWithImpl<$Res, _$CommentsDTOImpl>
    implements _$$CommentsDTOImplCopyWith<$Res> {
  __$$CommentsDTOImplCopyWithImpl(
      _$CommentsDTOImpl _value, $Res Function(_$CommentsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentIDs = freezed,
    Object? idMap = freezed,
  }) {
    return _then(_$CommentsDTOImpl(
      commentIDs: freezed == commentIDs
          ? _value._commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      idMap: freezed == idMap
          ? _value._idMap
          : idMap // ignore: cast_nullable_to_non_nullable
              as Map<String, IdMapDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentsDTOImpl extends _CommentsDTO {
  const _$CommentsDTOImpl(
      {@JsonKey(name: 'commentIDs') final List<String>? commentIDs,
      @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap})
      : _commentIDs = commentIDs,
        _idMap = idMap,
        super._();

  factory _$CommentsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentsDTOImplFromJson(json);

  final List<String>? _commentIDs;
  @override
  @JsonKey(name: 'commentIDs')
  List<String>? get commentIDs {
    final value = _commentIDs;
    if (value == null) return null;
    if (_commentIDs is EqualUnmodifiableListView) return _commentIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final Map<String, IdMapDTO>? _idMap;
  @override
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap {
    final value = _idMap;
    if (value == null) return null;
    if (_idMap is EqualUnmodifiableMapView) return _idMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Create a copy of CommentsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsDTOImplCopyWith<_$CommentsDTOImpl> get copyWith =>
      __$$CommentsDTOImplCopyWithImpl<_$CommentsDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentsDTOImplToJson(
      this,
    );
  }
}

abstract class _CommentsDTO extends CommentsDTO {
  const factory _CommentsDTO(
          {@JsonKey(name: 'commentIDs') final List<String>? commentIDs,
          @JsonKey(name: 'idMap') final Map<String, IdMapDTO>? idMap}) =
      _$CommentsDTOImpl;
  const _CommentsDTO._() : super._();

  factory _CommentsDTO.fromJson(Map<String, dynamic> json) =
      _$CommentsDTOImpl.fromJson;

  @override
  @JsonKey(name: 'commentIDs')
  List<String>? get commentIDs;
  @override
  @JsonKey(name: 'idMap')
  Map<String, IdMapDTO>? get idMap;

  /// Create a copy of CommentsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentsDTOImplCopyWith<_$CommentsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDTO _$MetaDTOFromJson(Map<String, dynamic> json) {
  return _MetaDTO.fromJson(json);
}

/// @nodoc
mixin _$MetaDTO {
  @JsonKey(name: 'targetFBID')
  String? get targetFbid => throw _privateConstructorUsedError;
  @JsonKey(name: 'href')
  String? get href => throw _privateConstructorUsedError;
  @JsonKey(name: 'userID')
  String? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'actorsOptIn')
  Map<String, bool>? get actorsOptIn => throw _privateConstructorUsedError;
  @JsonKey(name: 'actors')
  Map<String, ActorDTO>? get actors => throw _privateConstructorUsedError;
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'afterCursor')
  String? get afterCursor => throw _privateConstructorUsedError;
  @JsonKey(name: 'appID')
  String? get appId => throw _privateConstructorUsedError;
  @JsonKey(name: 'isMobile')
  bool? get isMobile => throw _privateConstructorUsedError;
  @JsonKey(name: 'isModerator')
  bool? get isModerator => throw _privateConstructorUsedError;
  @JsonKey(name: 'minFeedLength')
  int? get minFeedLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxCommentLength')
  int? get maxCommentLength => throw _privateConstructorUsedError;
  @JsonKey(name: 'enablePhoto')
  bool? get enablePhoto => throw _privateConstructorUsedError;
  @JsonKey(name: 'enableSticker')
  bool? get enableSticker => throw _privateConstructorUsedError;
  @JsonKey(name: 'threadClosed')
  bool? get threadClosed => throw _privateConstructorUsedError;
  @JsonKey(name: 'shouldSwitchAccount')
  bool? get shouldSwitchAccount => throw _privateConstructorUsedError;
  @JsonKey(name: 'fromModTool')
  bool? get fromModTool => throw _privateConstructorUsedError;
  @JsonKey(name: 'privacyOptionsList')
  List<dynamic>? get privacyOptionsList => throw _privateConstructorUsedError;
  @JsonKey(name: 'composerSearchSource')
  ComposerSearchSourceDTO? get composerSearchSource =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'channelURL')
  String? get channelUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'consentRequired')
  bool? get consentRequired => throw _privateConstructorUsedError;

  /// Serializes this MetaDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaDTOCopyWith<MetaDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDTOCopyWith<$Res> {
  factory $MetaDTOCopyWith(MetaDTO value, $Res Function(MetaDTO) then) =
      _$MetaDTOCopyWithImpl<$Res, MetaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'targetFBID') String? targetFbid,
      @JsonKey(name: 'href') String? href,
      @JsonKey(name: 'userID') String? userId,
      @JsonKey(name: 'actorsOptIn') Map<String, bool>? actorsOptIn,
      @JsonKey(name: 'actors') Map<String, ActorDTO>? actors,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'afterCursor') String? afterCursor,
      @JsonKey(name: 'appID') String? appId,
      @JsonKey(name: 'isMobile') bool? isMobile,
      @JsonKey(name: 'isModerator') bool? isModerator,
      @JsonKey(name: 'minFeedLength') int? minFeedLength,
      @JsonKey(name: 'maxCommentLength') int? maxCommentLength,
      @JsonKey(name: 'enablePhoto') bool? enablePhoto,
      @JsonKey(name: 'enableSticker') bool? enableSticker,
      @JsonKey(name: 'threadClosed') bool? threadClosed,
      @JsonKey(name: 'shouldSwitchAccount') bool? shouldSwitchAccount,
      @JsonKey(name: 'fromModTool') bool? fromModTool,
      @JsonKey(name: 'privacyOptionsList') List<dynamic>? privacyOptionsList,
      @JsonKey(name: 'composerSearchSource')
      ComposerSearchSourceDTO? composerSearchSource,
      @JsonKey(name: 'channelURL') String? channelUrl,
      @JsonKey(name: 'consentRequired') bool? consentRequired});

  $ComposerSearchSourceDTOCopyWith<$Res>? get composerSearchSource;
}

/// @nodoc
class _$MetaDTOCopyWithImpl<$Res, $Val extends MetaDTO>
    implements $MetaDTOCopyWith<$Res> {
  _$MetaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFbid = freezed,
    Object? href = freezed,
    Object? userId = freezed,
    Object? actorsOptIn = freezed,
    Object? actors = freezed,
    Object? totalCount = freezed,
    Object? afterCursor = freezed,
    Object? appId = freezed,
    Object? isMobile = freezed,
    Object? isModerator = freezed,
    Object? minFeedLength = freezed,
    Object? maxCommentLength = freezed,
    Object? enablePhoto = freezed,
    Object? enableSticker = freezed,
    Object? threadClosed = freezed,
    Object? shouldSwitchAccount = freezed,
    Object? fromModTool = freezed,
    Object? privacyOptionsList = freezed,
    Object? composerSearchSource = freezed,
    Object? channelUrl = freezed,
    Object? consentRequired = freezed,
  }) {
    return _then(_value.copyWith(
      targetFbid: freezed == targetFbid
          ? _value.targetFbid
          : targetFbid // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorsOptIn: freezed == actorsOptIn
          ? _value.actorsOptIn
          : actorsOptIn // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      actors: freezed == actors
          ? _value.actors
          : actors // ignore: cast_nullable_to_non_nullable
              as Map<String, ActorDTO>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      afterCursor: freezed == afterCursor
          ? _value.afterCursor
          : afterCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobile: freezed == isMobile
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      isModerator: freezed == isModerator
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool?,
      minFeedLength: freezed == minFeedLength
          ? _value.minFeedLength
          : minFeedLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCommentLength: freezed == maxCommentLength
          ? _value.maxCommentLength
          : maxCommentLength // ignore: cast_nullable_to_non_nullable
              as int?,
      enablePhoto: freezed == enablePhoto
          ? _value.enablePhoto
          : enablePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSticker: freezed == enableSticker
          ? _value.enableSticker
          : enableSticker // ignore: cast_nullable_to_non_nullable
              as bool?,
      threadClosed: freezed == threadClosed
          ? _value.threadClosed
          : threadClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldSwitchAccount: freezed == shouldSwitchAccount
          ? _value.shouldSwitchAccount
          : shouldSwitchAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromModTool: freezed == fromModTool
          ? _value.fromModTool
          : fromModTool // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyOptionsList: freezed == privacyOptionsList
          ? _value.privacyOptionsList
          : privacyOptionsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      composerSearchSource: freezed == composerSearchSource
          ? _value.composerSearchSource
          : composerSearchSource // ignore: cast_nullable_to_non_nullable
              as ComposerSearchSourceDTO?,
      channelUrl: freezed == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consentRequired: freezed == consentRequired
          ? _value.consentRequired
          : consentRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ComposerSearchSourceDTOCopyWith<$Res>? get composerSearchSource {
    if (_value.composerSearchSource == null) {
      return null;
    }

    return $ComposerSearchSourceDTOCopyWith<$Res>(_value.composerSearchSource!,
        (value) {
      return _then(_value.copyWith(composerSearchSource: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MetaDTOImplCopyWith<$Res> implements $MetaDTOCopyWith<$Res> {
  factory _$$MetaDTOImplCopyWith(
          _$MetaDTOImpl value, $Res Function(_$MetaDTOImpl) then) =
      __$$MetaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'targetFBID') String? targetFbid,
      @JsonKey(name: 'href') String? href,
      @JsonKey(name: 'userID') String? userId,
      @JsonKey(name: 'actorsOptIn') Map<String, bool>? actorsOptIn,
      @JsonKey(name: 'actors') Map<String, ActorDTO>? actors,
      @JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'afterCursor') String? afterCursor,
      @JsonKey(name: 'appID') String? appId,
      @JsonKey(name: 'isMobile') bool? isMobile,
      @JsonKey(name: 'isModerator') bool? isModerator,
      @JsonKey(name: 'minFeedLength') int? minFeedLength,
      @JsonKey(name: 'maxCommentLength') int? maxCommentLength,
      @JsonKey(name: 'enablePhoto') bool? enablePhoto,
      @JsonKey(name: 'enableSticker') bool? enableSticker,
      @JsonKey(name: 'threadClosed') bool? threadClosed,
      @JsonKey(name: 'shouldSwitchAccount') bool? shouldSwitchAccount,
      @JsonKey(name: 'fromModTool') bool? fromModTool,
      @JsonKey(name: 'privacyOptionsList') List<dynamic>? privacyOptionsList,
      @JsonKey(name: 'composerSearchSource')
      ComposerSearchSourceDTO? composerSearchSource,
      @JsonKey(name: 'channelURL') String? channelUrl,
      @JsonKey(name: 'consentRequired') bool? consentRequired});

  @override
  $ComposerSearchSourceDTOCopyWith<$Res>? get composerSearchSource;
}

/// @nodoc
class __$$MetaDTOImplCopyWithImpl<$Res>
    extends _$MetaDTOCopyWithImpl<$Res, _$MetaDTOImpl>
    implements _$$MetaDTOImplCopyWith<$Res> {
  __$$MetaDTOImplCopyWithImpl(
      _$MetaDTOImpl _value, $Res Function(_$MetaDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? targetFbid = freezed,
    Object? href = freezed,
    Object? userId = freezed,
    Object? actorsOptIn = freezed,
    Object? actors = freezed,
    Object? totalCount = freezed,
    Object? afterCursor = freezed,
    Object? appId = freezed,
    Object? isMobile = freezed,
    Object? isModerator = freezed,
    Object? minFeedLength = freezed,
    Object? maxCommentLength = freezed,
    Object? enablePhoto = freezed,
    Object? enableSticker = freezed,
    Object? threadClosed = freezed,
    Object? shouldSwitchAccount = freezed,
    Object? fromModTool = freezed,
    Object? privacyOptionsList = freezed,
    Object? composerSearchSource = freezed,
    Object? channelUrl = freezed,
    Object? consentRequired = freezed,
  }) {
    return _then(_$MetaDTOImpl(
      targetFbid: freezed == targetFbid
          ? _value.targetFbid
          : targetFbid // ignore: cast_nullable_to_non_nullable
              as String?,
      href: freezed == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      actorsOptIn: freezed == actorsOptIn
          ? _value._actorsOptIn
          : actorsOptIn // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
      actors: freezed == actors
          ? _value._actors
          : actors // ignore: cast_nullable_to_non_nullable
              as Map<String, ActorDTO>?,
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      afterCursor: freezed == afterCursor
          ? _value.afterCursor
          : afterCursor // ignore: cast_nullable_to_non_nullable
              as String?,
      appId: freezed == appId
          ? _value.appId
          : appId // ignore: cast_nullable_to_non_nullable
              as String?,
      isMobile: freezed == isMobile
          ? _value.isMobile
          : isMobile // ignore: cast_nullable_to_non_nullable
              as bool?,
      isModerator: freezed == isModerator
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool?,
      minFeedLength: freezed == minFeedLength
          ? _value.minFeedLength
          : minFeedLength // ignore: cast_nullable_to_non_nullable
              as int?,
      maxCommentLength: freezed == maxCommentLength
          ? _value.maxCommentLength
          : maxCommentLength // ignore: cast_nullable_to_non_nullable
              as int?,
      enablePhoto: freezed == enablePhoto
          ? _value.enablePhoto
          : enablePhoto // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableSticker: freezed == enableSticker
          ? _value.enableSticker
          : enableSticker // ignore: cast_nullable_to_non_nullable
              as bool?,
      threadClosed: freezed == threadClosed
          ? _value.threadClosed
          : threadClosed // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldSwitchAccount: freezed == shouldSwitchAccount
          ? _value.shouldSwitchAccount
          : shouldSwitchAccount // ignore: cast_nullable_to_non_nullable
              as bool?,
      fromModTool: freezed == fromModTool
          ? _value.fromModTool
          : fromModTool // ignore: cast_nullable_to_non_nullable
              as bool?,
      privacyOptionsList: freezed == privacyOptionsList
          ? _value._privacyOptionsList
          : privacyOptionsList // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      composerSearchSource: freezed == composerSearchSource
          ? _value.composerSearchSource
          : composerSearchSource // ignore: cast_nullable_to_non_nullable
              as ComposerSearchSourceDTO?,
      channelUrl: freezed == channelUrl
          ? _value.channelUrl
          : channelUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      consentRequired: freezed == consentRequired
          ? _value.consentRequired
          : consentRequired // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDTOImpl extends _MetaDTO {
  const _$MetaDTOImpl(
      {@JsonKey(name: 'targetFBID') this.targetFbid,
      @JsonKey(name: 'href') this.href,
      @JsonKey(name: 'userID') this.userId,
      @JsonKey(name: 'actorsOptIn') final Map<String, bool>? actorsOptIn,
      @JsonKey(name: 'actors') final Map<String, ActorDTO>? actors,
      @JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'afterCursor') this.afterCursor,
      @JsonKey(name: 'appID') this.appId,
      @JsonKey(name: 'isMobile') this.isMobile,
      @JsonKey(name: 'isModerator') this.isModerator,
      @JsonKey(name: 'minFeedLength') this.minFeedLength,
      @JsonKey(name: 'maxCommentLength') this.maxCommentLength,
      @JsonKey(name: 'enablePhoto') this.enablePhoto,
      @JsonKey(name: 'enableSticker') this.enableSticker,
      @JsonKey(name: 'threadClosed') this.threadClosed,
      @JsonKey(name: 'shouldSwitchAccount') this.shouldSwitchAccount,
      @JsonKey(name: 'fromModTool') this.fromModTool,
      @JsonKey(name: 'privacyOptionsList')
      final List<dynamic>? privacyOptionsList,
      @JsonKey(name: 'composerSearchSource') this.composerSearchSource,
      @JsonKey(name: 'channelURL') this.channelUrl,
      @JsonKey(name: 'consentRequired') this.consentRequired})
      : _actorsOptIn = actorsOptIn,
        _actors = actors,
        _privacyOptionsList = privacyOptionsList,
        super._();

  factory _$MetaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDTOImplFromJson(json);

  @override
  @JsonKey(name: 'targetFBID')
  final String? targetFbid;
  @override
  @JsonKey(name: 'href')
  final String? href;
  @override
  @JsonKey(name: 'userID')
  final String? userId;
  final Map<String, bool>? _actorsOptIn;
  @override
  @JsonKey(name: 'actorsOptIn')
  Map<String, bool>? get actorsOptIn {
    final value = _actorsOptIn;
    if (value == null) return null;
    if (_actorsOptIn is EqualUnmodifiableMapView) return _actorsOptIn;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final Map<String, ActorDTO>? _actors;
  @override
  @JsonKey(name: 'actors')
  Map<String, ActorDTO>? get actors {
    final value = _actors;
    if (value == null) return null;
    if (_actors is EqualUnmodifiableMapView) return _actors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  @override
  @JsonKey(name: 'afterCursor')
  final String? afterCursor;
  @override
  @JsonKey(name: 'appID')
  final String? appId;
  @override
  @JsonKey(name: 'isMobile')
  final bool? isMobile;
  @override
  @JsonKey(name: 'isModerator')
  final bool? isModerator;
  @override
  @JsonKey(name: 'minFeedLength')
  final int? minFeedLength;
  @override
  @JsonKey(name: 'maxCommentLength')
  final int? maxCommentLength;
  @override
  @JsonKey(name: 'enablePhoto')
  final bool? enablePhoto;
  @override
  @JsonKey(name: 'enableSticker')
  final bool? enableSticker;
  @override
  @JsonKey(name: 'threadClosed')
  final bool? threadClosed;
  @override
  @JsonKey(name: 'shouldSwitchAccount')
  final bool? shouldSwitchAccount;
  @override
  @JsonKey(name: 'fromModTool')
  final bool? fromModTool;
  final List<dynamic>? _privacyOptionsList;
  @override
  @JsonKey(name: 'privacyOptionsList')
  List<dynamic>? get privacyOptionsList {
    final value = _privacyOptionsList;
    if (value == null) return null;
    if (_privacyOptionsList is EqualUnmodifiableListView)
      return _privacyOptionsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'composerSearchSource')
  final ComposerSearchSourceDTO? composerSearchSource;
  @override
  @JsonKey(name: 'channelURL')
  final String? channelUrl;
  @override
  @JsonKey(name: 'consentRequired')
  final bool? consentRequired;

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDTOImplCopyWith<_$MetaDTOImpl> get copyWith =>
      __$$MetaDTOImplCopyWithImpl<_$MetaDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDTOImplToJson(
      this,
    );
  }
}

abstract class _MetaDTO extends MetaDTO {
  const factory _MetaDTO(
          {@JsonKey(name: 'targetFBID') final String? targetFbid,
          @JsonKey(name: 'href') final String? href,
          @JsonKey(name: 'userID') final String? userId,
          @JsonKey(name: 'actorsOptIn') final Map<String, bool>? actorsOptIn,
          @JsonKey(name: 'actors') final Map<String, ActorDTO>? actors,
          @JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'afterCursor') final String? afterCursor,
          @JsonKey(name: 'appID') final String? appId,
          @JsonKey(name: 'isMobile') final bool? isMobile,
          @JsonKey(name: 'isModerator') final bool? isModerator,
          @JsonKey(name: 'minFeedLength') final int? minFeedLength,
          @JsonKey(name: 'maxCommentLength') final int? maxCommentLength,
          @JsonKey(name: 'enablePhoto') final bool? enablePhoto,
          @JsonKey(name: 'enableSticker') final bool? enableSticker,
          @JsonKey(name: 'threadClosed') final bool? threadClosed,
          @JsonKey(name: 'shouldSwitchAccount') final bool? shouldSwitchAccount,
          @JsonKey(name: 'fromModTool') final bool? fromModTool,
          @JsonKey(name: 'privacyOptionsList')
          final List<dynamic>? privacyOptionsList,
          @JsonKey(name: 'composerSearchSource')
          final ComposerSearchSourceDTO? composerSearchSource,
          @JsonKey(name: 'channelURL') final String? channelUrl,
          @JsonKey(name: 'consentRequired') final bool? consentRequired}) =
      _$MetaDTOImpl;
  const _MetaDTO._() : super._();

  factory _MetaDTO.fromJson(Map<String, dynamic> json) = _$MetaDTOImpl.fromJson;

  @override
  @JsonKey(name: 'targetFBID')
  String? get targetFbid;
  @override
  @JsonKey(name: 'href')
  String? get href;
  @override
  @JsonKey(name: 'userID')
  String? get userId;
  @override
  @JsonKey(name: 'actorsOptIn')
  Map<String, bool>? get actorsOptIn;
  @override
  @JsonKey(name: 'actors')
  Map<String, ActorDTO>? get actors;
  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'afterCursor')
  String? get afterCursor;
  @override
  @JsonKey(name: 'appID')
  String? get appId;
  @override
  @JsonKey(name: 'isMobile')
  bool? get isMobile;
  @override
  @JsonKey(name: 'isModerator')
  bool? get isModerator;
  @override
  @JsonKey(name: 'minFeedLength')
  int? get minFeedLength;
  @override
  @JsonKey(name: 'maxCommentLength')
  int? get maxCommentLength;
  @override
  @JsonKey(name: 'enablePhoto')
  bool? get enablePhoto;
  @override
  @JsonKey(name: 'enableSticker')
  bool? get enableSticker;
  @override
  @JsonKey(name: 'threadClosed')
  bool? get threadClosed;
  @override
  @JsonKey(name: 'shouldSwitchAccount')
  bool? get shouldSwitchAccount;
  @override
  @JsonKey(name: 'fromModTool')
  bool? get fromModTool;
  @override
  @JsonKey(name: 'privacyOptionsList')
  List<dynamic>? get privacyOptionsList;
  @override
  @JsonKey(name: 'composerSearchSource')
  ComposerSearchSourceDTO? get composerSearchSource;
  @override
  @JsonKey(name: 'channelURL')
  String? get channelUrl;
  @override
  @JsonKey(name: 'consentRequired')
  bool? get consentRequired;

  /// Create a copy of MetaDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaDTOImplCopyWith<_$MetaDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ActorDTO _$ActorDTOFromJson(Map<String, dynamic> json) {
  return _ActorDTO.fromJson(json);
}

/// @nodoc
mixin _$ActorDTO {
  @JsonKey(name: 'id')
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbSrc')
  String? get thumbSrc => throw _privateConstructorUsedError;
  @JsonKey(name: 'uri')
  String? get uri => throw _privateConstructorUsedError;
  @JsonKey(name: 'isVerified')
  bool? get isVerified => throw _privateConstructorUsedError;
  @JsonKey(name: 'type')
  Type? get type => throw _privateConstructorUsedError;

  /// Serializes this ActorDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ActorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ActorDTOCopyWith<ActorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActorDTOCopyWith<$Res> {
  factory $ActorDTOCopyWith(ActorDTO value, $Res Function(ActorDTO) then) =
      _$ActorDTOCopyWithImpl<$Res, ActorDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbSrc') String? thumbSrc,
      @JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'isVerified') bool? isVerified,
      @JsonKey(name: 'type') Type? type});
}

/// @nodoc
class _$ActorDTOCopyWithImpl<$Res, $Val extends ActorDTO>
    implements $ActorDTOCopyWith<$Res> {
  _$ActorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ActorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbSrc = freezed,
    Object? uri = freezed,
    Object? isVerified = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbSrc: freezed == thumbSrc
          ? _value.thumbSrc
          : thumbSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ActorDTOImplCopyWith<$Res>
    implements $ActorDTOCopyWith<$Res> {
  factory _$$ActorDTOImplCopyWith(
          _$ActorDTOImpl value, $Res Function(_$ActorDTOImpl) then) =
      __$$ActorDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') String? id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbSrc') String? thumbSrc,
      @JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'isVerified') bool? isVerified,
      @JsonKey(name: 'type') Type? type});
}

/// @nodoc
class __$$ActorDTOImplCopyWithImpl<$Res>
    extends _$ActorDTOCopyWithImpl<$Res, _$ActorDTOImpl>
    implements _$$ActorDTOImplCopyWith<$Res> {
  __$$ActorDTOImplCopyWithImpl(
      _$ActorDTOImpl _value, $Res Function(_$ActorDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ActorDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? thumbSrc = freezed,
    Object? uri = freezed,
    Object? isVerified = freezed,
    Object? type = freezed,
  }) {
    return _then(_$ActorDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbSrc: freezed == thumbSrc
          ? _value.thumbSrc
          : thumbSrc // ignore: cast_nullable_to_non_nullable
              as String?,
      uri: freezed == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String?,
      isVerified: freezed == isVerified
          ? _value.isVerified
          : isVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActorDTOImpl extends _ActorDTO {
  const _$ActorDTOImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'thumbSrc') this.thumbSrc,
      @JsonKey(name: 'uri') this.uri,
      @JsonKey(name: 'isVerified') this.isVerified,
      @JsonKey(name: 'type') this.type})
      : super._();

  factory _$ActorDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActorDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String? id;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'thumbSrc')
  final String? thumbSrc;
  @override
  @JsonKey(name: 'uri')
  final String? uri;
  @override
  @JsonKey(name: 'isVerified')
  final bool? isVerified;
  @override
  @JsonKey(name: 'type')
  final Type? type;

  /// Create a copy of ActorDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ActorDTOImplCopyWith<_$ActorDTOImpl> get copyWith =>
      __$$ActorDTOImplCopyWithImpl<_$ActorDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActorDTOImplToJson(
      this,
    );
  }
}

abstract class _ActorDTO extends ActorDTO {
  const factory _ActorDTO(
      {@JsonKey(name: 'id') final String? id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'thumbSrc') final String? thumbSrc,
      @JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'isVerified') final bool? isVerified,
      @JsonKey(name: 'type') final Type? type}) = _$ActorDTOImpl;
  const _ActorDTO._() : super._();

  factory _ActorDTO.fromJson(Map<String, dynamic> json) =
      _$ActorDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  String? get id;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'thumbSrc')
  String? get thumbSrc;
  @override
  @JsonKey(name: 'uri')
  String? get uri;
  @override
  @JsonKey(name: 'isVerified')
  bool? get isVerified;
  @override
  @JsonKey(name: 'type')
  Type? get type;

  /// Create a copy of ActorDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ActorDTOImplCopyWith<_$ActorDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComposerSearchSourceDTO _$ComposerSearchSourceDTOFromJson(
    Map<String, dynamic> json) {
  return _ComposerSearchSourceDTO.fromJson(json);
}

/// @nodoc
mixin _$ComposerSearchSourceDTO {
  @JsonKey(name: '__m')
  String? get m => throw _privateConstructorUsedError;

  /// Serializes this ComposerSearchSourceDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComposerSearchSourceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComposerSearchSourceDTOCopyWith<ComposerSearchSourceDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComposerSearchSourceDTOCopyWith<$Res> {
  factory $ComposerSearchSourceDTOCopyWith(ComposerSearchSourceDTO value,
          $Res Function(ComposerSearchSourceDTO) then) =
      _$ComposerSearchSourceDTOCopyWithImpl<$Res, ComposerSearchSourceDTO>;
  @useResult
  $Res call({@JsonKey(name: '__m') String? m});
}

/// @nodoc
class _$ComposerSearchSourceDTOCopyWithImpl<$Res,
        $Val extends ComposerSearchSourceDTO>
    implements $ComposerSearchSourceDTOCopyWith<$Res> {
  _$ComposerSearchSourceDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComposerSearchSourceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? m = freezed,
  }) {
    return _then(_value.copyWith(
      m: freezed == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComposerSearchSourceDTOImplCopyWith<$Res>
    implements $ComposerSearchSourceDTOCopyWith<$Res> {
  factory _$$ComposerSearchSourceDTOImplCopyWith(
          _$ComposerSearchSourceDTOImpl value,
          $Res Function(_$ComposerSearchSourceDTOImpl) then) =
      __$$ComposerSearchSourceDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: '__m') String? m});
}

/// @nodoc
class __$$ComposerSearchSourceDTOImplCopyWithImpl<$Res>
    extends _$ComposerSearchSourceDTOCopyWithImpl<$Res,
        _$ComposerSearchSourceDTOImpl>
    implements _$$ComposerSearchSourceDTOImplCopyWith<$Res> {
  __$$ComposerSearchSourceDTOImplCopyWithImpl(
      _$ComposerSearchSourceDTOImpl _value,
      $Res Function(_$ComposerSearchSourceDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ComposerSearchSourceDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? m = freezed,
  }) {
    return _then(_$ComposerSearchSourceDTOImpl(
      m: freezed == m
          ? _value.m
          : m // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ComposerSearchSourceDTOImpl extends _ComposerSearchSourceDTO {
  const _$ComposerSearchSourceDTOImpl({@JsonKey(name: '__m') this.m})
      : super._();

  factory _$ComposerSearchSourceDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComposerSearchSourceDTOImplFromJson(json);

  @override
  @JsonKey(name: '__m')
  final String? m;

  /// Create a copy of ComposerSearchSourceDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComposerSearchSourceDTOImplCopyWith<_$ComposerSearchSourceDTOImpl>
      get copyWith => __$$ComposerSearchSourceDTOImplCopyWithImpl<
          _$ComposerSearchSourceDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComposerSearchSourceDTOImplToJson(
      this,
    );
  }
}

abstract class _ComposerSearchSourceDTO extends ComposerSearchSourceDTO {
  const factory _ComposerSearchSourceDTO(
      {@JsonKey(name: '__m') final String? m}) = _$ComposerSearchSourceDTOImpl;
  const _ComposerSearchSourceDTO._() : super._();

  factory _ComposerSearchSourceDTO.fromJson(Map<String, dynamic> json) =
      _$ComposerSearchSourceDTOImpl.fromJson;

  @override
  @JsonKey(name: '__m')
  String? get m;

  /// Create a copy of ComposerSearchSourceDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComposerSearchSourceDTOImplCopyWith<_$ComposerSearchSourceDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}

CommentDataDTO _$CommentDataDTOFromJson(Map<String, dynamic> json) {
  return _CommentDataDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentDataDTO {
  MetaDTO? get meta => throw _privateConstructorUsedError;
  List<CommentDTO> get comments => throw _privateConstructorUsedError;

  /// Serializes this CommentDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDataDTOCopyWith<CommentDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDataDTOCopyWith<$Res> {
  factory $CommentDataDTOCopyWith(
          CommentDataDTO value, $Res Function(CommentDataDTO) then) =
      _$CommentDataDTOCopyWithImpl<$Res, CommentDataDTO>;
  @useResult
  $Res call({MetaDTO? meta, List<CommentDTO> comments});

  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class _$CommentDataDTOCopyWithImpl<$Res, $Val extends CommentDataDTO>
    implements $CommentDataDTOCopyWith<$Res> {
  _$CommentDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? comments = null,
  }) {
    return _then(_value.copyWith(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      comments: null == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ) as $Val);
  }

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDTOCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaDTOCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CommentDataDTOImplCopyWith<$Res>
    implements $CommentDataDTOCopyWith<$Res> {
  factory _$$CommentDataDTOImplCopyWith(_$CommentDataDTOImpl value,
          $Res Function(_$CommentDataDTOImpl) then) =
      __$$CommentDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MetaDTO? meta, List<CommentDTO> comments});

  @override
  $MetaDTOCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$CommentDataDTOImplCopyWithImpl<$Res>
    extends _$CommentDataDTOCopyWithImpl<$Res, _$CommentDataDTOImpl>
    implements _$$CommentDataDTOImplCopyWith<$Res> {
  __$$CommentDataDTOImplCopyWithImpl(
      _$CommentDataDTOImpl _value, $Res Function(_$CommentDataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meta = freezed,
    Object? comments = null,
  }) {
    return _then(_$CommentDataDTOImpl(
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDTO?,
      comments: null == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDataDTOImpl extends _CommentDataDTO {
  const _$CommentDataDTOImpl(
      {this.meta, final List<CommentDTO> comments = const []})
      : _comments = comments,
        super._();

  factory _$CommentDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDataDTOImplFromJson(json);

  @override
  final MetaDTO? meta;
  final List<CommentDTO> _comments;
  @override
  @JsonKey()
  List<CommentDTO> get comments {
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_comments);
  }

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDataDTOImplCopyWith<_$CommentDataDTOImpl> get copyWith =>
      __$$CommentDataDTOImplCopyWithImpl<_$CommentDataDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDataDTOImplToJson(
      this,
    );
  }
}

abstract class _CommentDataDTO extends CommentDataDTO {
  const factory _CommentDataDTO(
      {final MetaDTO? meta,
      final List<CommentDTO> comments}) = _$CommentDataDTOImpl;
  const _CommentDataDTO._() : super._();

  factory _CommentDataDTO.fromJson(Map<String, dynamic> json) =
      _$CommentDataDTOImpl.fromJson;

  @override
  MetaDTO? get meta;
  @override
  List<CommentDTO> get comments;

  /// Create a copy of CommentDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDataDTOImplCopyWith<_$CommentDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
