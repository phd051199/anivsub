// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'id_map_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

IdMapDTO _$IdMapDTOFromJson(Map<String, dynamic> json) {
  return _IdMapDTO.fromJson(json);
}

/// @nodoc
mixin _$IdMapDTO {
  @JsonKey(name: 'id')
  dynamic get id => throw _privateConstructorUsedError;
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
  @JsonKey(name: 'authorID')
  dynamic get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'body')
  BodyDTO? get body => throw _privateConstructorUsedError;
  @JsonKey(name: 'ranges')
  List<dynamic>? get ranges => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  TimestampDTO? get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'targetID')
  dynamic get targetId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ogURL')
  String? get ogUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'likeCount')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'hasLiked')
  bool? get hasLiked => throw _privateConstructorUsedError;
  @JsonKey(name: 'canLike')
  bool? get canLike => throw _privateConstructorUsedError;
  @JsonKey(name: 'canEdit')
  bool? get canEdit => throw _privateConstructorUsedError;
  @JsonKey(name: 'hidden')
  bool? get hidden => throw _privateConstructorUsedError;
  @JsonKey(name: 'highlightedWords')
  List<dynamic>? get highlightedWords => throw _privateConstructorUsedError;
  @JsonKey(name: 'reportURI')
  String? get reportUri => throw _privateConstructorUsedError;
  @JsonKey(name: 'spamCount')
  int? get spamCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'canEmbed')
  bool? get canEmbed => throw _privateConstructorUsedError;
  @JsonKey(name: 'public_replies')
  PublicRepliesDTO? get publicReplies => throw _privateConstructorUsedError;

  /// Serializes this IdMapDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $IdMapDTOCopyWith<IdMapDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdMapDTOCopyWith<$Res> {
  factory $IdMapDTOCopyWith(IdMapDTO value, $Res Function(IdMapDTO) then) =
      _$IdMapDTOCopyWithImpl<$Res, IdMapDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbSrc') String? thumbSrc,
      @JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'isVerified') bool? isVerified,
      @JsonKey(name: 'type') Type? type,
      @JsonKey(name: 'authorID') dynamic authorId,
      @JsonKey(name: 'body') BodyDTO? body,
      @JsonKey(name: 'ranges') List<dynamic>? ranges,
      @JsonKey(name: 'timestamp') TimestampDTO? timestamp,
      @JsonKey(name: 'targetID') dynamic targetId,
      @JsonKey(name: 'ogURL') String? ogUrl,
      @JsonKey(name: 'likeCount') int? likeCount,
      @JsonKey(name: 'hasLiked') bool? hasLiked,
      @JsonKey(name: 'canLike') bool? canLike,
      @JsonKey(name: 'canEdit') bool? canEdit,
      @JsonKey(name: 'hidden') bool? hidden,
      @JsonKey(name: 'highlightedWords') List<dynamic>? highlightedWords,
      @JsonKey(name: 'reportURI') String? reportUri,
      @JsonKey(name: 'spamCount') int? spamCount,
      @JsonKey(name: 'canEmbed') bool? canEmbed,
      @JsonKey(name: 'public_replies') PublicRepliesDTO? publicReplies});

  $BodyDTOCopyWith<$Res>? get body;
  $TimestampDTOCopyWith<$Res>? get timestamp;
  $PublicRepliesDTOCopyWith<$Res>? get publicReplies;
}

/// @nodoc
class _$IdMapDTOCopyWithImpl<$Res, $Val extends IdMapDTO>
    implements $IdMapDTOCopyWith<$Res> {
  _$IdMapDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of IdMapDTO
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
    Object? authorId = freezed,
    Object? body = freezed,
    Object? ranges = freezed,
    Object? timestamp = freezed,
    Object? targetId = freezed,
    Object? ogUrl = freezed,
    Object? likeCount = freezed,
    Object? hasLiked = freezed,
    Object? canLike = freezed,
    Object? canEdit = freezed,
    Object? hidden = freezed,
    Object? highlightedWords = freezed,
    Object? reportUri = freezed,
    Object? spamCount = freezed,
    Object? canEmbed = freezed,
    Object? publicReplies = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as BodyDTO?,
      ranges: freezed == ranges
          ? _value.ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as TimestampDTO?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ogUrl: freezed == ogUrl
          ? _value.ogUrl
          : ogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLiked: freezed == hasLiked
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      canLike: freezed == canLike
          ? _value.canLike
          : canLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightedWords: freezed == highlightedWords
          ? _value.highlightedWords
          : highlightedWords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reportUri: freezed == reportUri
          ? _value.reportUri
          : reportUri // ignore: cast_nullable_to_non_nullable
              as String?,
      spamCount: freezed == spamCount
          ? _value.spamCount
          : spamCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canEmbed: freezed == canEmbed
          ? _value.canEmbed
          : canEmbed // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicReplies: freezed == publicReplies
          ? _value.publicReplies
          : publicReplies // ignore: cast_nullable_to_non_nullable
              as PublicRepliesDTO?,
    ) as $Val);
  }

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BodyDTOCopyWith<$Res>? get body {
    if (_value.body == null) {
      return null;
    }

    return $BodyDTOCopyWith<$Res>(_value.body!, (value) {
      return _then(_value.copyWith(body: value) as $Val);
    });
  }

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TimestampDTOCopyWith<$Res>? get timestamp {
    if (_value.timestamp == null) {
      return null;
    }

    return $TimestampDTOCopyWith<$Res>(_value.timestamp!, (value) {
      return _then(_value.copyWith(timestamp: value) as $Val);
    });
  }

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicRepliesDTOCopyWith<$Res>? get publicReplies {
    if (_value.publicReplies == null) {
      return null;
    }

    return $PublicRepliesDTOCopyWith<$Res>(_value.publicReplies!, (value) {
      return _then(_value.copyWith(publicReplies: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$IdMapDTOImplCopyWith<$Res>
    implements $IdMapDTOCopyWith<$Res> {
  factory _$$IdMapDTOImplCopyWith(
          _$IdMapDTOImpl value, $Res Function(_$IdMapDTOImpl) then) =
      __$$IdMapDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') dynamic id,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'thumbSrc') String? thumbSrc,
      @JsonKey(name: 'uri') String? uri,
      @JsonKey(name: 'isVerified') bool? isVerified,
      @JsonKey(name: 'type') Type? type,
      @JsonKey(name: 'authorID') dynamic authorId,
      @JsonKey(name: 'body') BodyDTO? body,
      @JsonKey(name: 'ranges') List<dynamic>? ranges,
      @JsonKey(name: 'timestamp') TimestampDTO? timestamp,
      @JsonKey(name: 'targetID') dynamic targetId,
      @JsonKey(name: 'ogURL') String? ogUrl,
      @JsonKey(name: 'likeCount') int? likeCount,
      @JsonKey(name: 'hasLiked') bool? hasLiked,
      @JsonKey(name: 'canLike') bool? canLike,
      @JsonKey(name: 'canEdit') bool? canEdit,
      @JsonKey(name: 'hidden') bool? hidden,
      @JsonKey(name: 'highlightedWords') List<dynamic>? highlightedWords,
      @JsonKey(name: 'reportURI') String? reportUri,
      @JsonKey(name: 'spamCount') int? spamCount,
      @JsonKey(name: 'canEmbed') bool? canEmbed,
      @JsonKey(name: 'public_replies') PublicRepliesDTO? publicReplies});

  @override
  $BodyDTOCopyWith<$Res>? get body;
  @override
  $TimestampDTOCopyWith<$Res>? get timestamp;
  @override
  $PublicRepliesDTOCopyWith<$Res>? get publicReplies;
}

/// @nodoc
class __$$IdMapDTOImplCopyWithImpl<$Res>
    extends _$IdMapDTOCopyWithImpl<$Res, _$IdMapDTOImpl>
    implements _$$IdMapDTOImplCopyWith<$Res> {
  __$$IdMapDTOImplCopyWithImpl(
      _$IdMapDTOImpl _value, $Res Function(_$IdMapDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of IdMapDTO
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
    Object? authorId = freezed,
    Object? body = freezed,
    Object? ranges = freezed,
    Object? timestamp = freezed,
    Object? targetId = freezed,
    Object? ogUrl = freezed,
    Object? likeCount = freezed,
    Object? hasLiked = freezed,
    Object? canLike = freezed,
    Object? canEdit = freezed,
    Object? hidden = freezed,
    Object? highlightedWords = freezed,
    Object? reportUri = freezed,
    Object? spamCount = freezed,
    Object? canEmbed = freezed,
    Object? publicReplies = freezed,
  }) {
    return _then(_$IdMapDTOImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      authorId: freezed == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as BodyDTO?,
      ranges: freezed == ranges
          ? _value._ranges
          : ranges // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      timestamp: freezed == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as TimestampDTO?,
      targetId: freezed == targetId
          ? _value.targetId
          : targetId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      ogUrl: freezed == ogUrl
          ? _value.ogUrl
          : ogUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      hasLiked: freezed == hasLiked
          ? _value.hasLiked
          : hasLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      canLike: freezed == canLike
          ? _value.canLike
          : canLike // ignore: cast_nullable_to_non_nullable
              as bool?,
      canEdit: freezed == canEdit
          ? _value.canEdit
          : canEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      hidden: freezed == hidden
          ? _value.hidden
          : hidden // ignore: cast_nullable_to_non_nullable
              as bool?,
      highlightedWords: freezed == highlightedWords
          ? _value._highlightedWords
          : highlightedWords // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reportUri: freezed == reportUri
          ? _value.reportUri
          : reportUri // ignore: cast_nullable_to_non_nullable
              as String?,
      spamCount: freezed == spamCount
          ? _value.spamCount
          : spamCount // ignore: cast_nullable_to_non_nullable
              as int?,
      canEmbed: freezed == canEmbed
          ? _value.canEmbed
          : canEmbed // ignore: cast_nullable_to_non_nullable
              as bool?,
      publicReplies: freezed == publicReplies
          ? _value.publicReplies
          : publicReplies // ignore: cast_nullable_to_non_nullable
              as PublicRepliesDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdMapDTOImpl extends _IdMapDTO {
  const _$IdMapDTOImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'thumbSrc') this.thumbSrc,
      @JsonKey(name: 'uri') this.uri,
      @JsonKey(name: 'isVerified') this.isVerified,
      @JsonKey(name: 'type') this.type,
      @JsonKey(name: 'authorID') this.authorId,
      @JsonKey(name: 'body') this.body,
      @JsonKey(name: 'ranges') final List<dynamic>? ranges,
      @JsonKey(name: 'timestamp') this.timestamp,
      @JsonKey(name: 'targetID') this.targetId,
      @JsonKey(name: 'ogURL') this.ogUrl,
      @JsonKey(name: 'likeCount') this.likeCount,
      @JsonKey(name: 'hasLiked') this.hasLiked,
      @JsonKey(name: 'canLike') this.canLike,
      @JsonKey(name: 'canEdit') this.canEdit,
      @JsonKey(name: 'hidden') this.hidden,
      @JsonKey(name: 'highlightedWords') final List<dynamic>? highlightedWords,
      @JsonKey(name: 'reportURI') this.reportUri,
      @JsonKey(name: 'spamCount') this.spamCount,
      @JsonKey(name: 'canEmbed') this.canEmbed,
      @JsonKey(name: 'public_replies') this.publicReplies})
      : _ranges = ranges,
        _highlightedWords = highlightedWords,
        super._();

  factory _$IdMapDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdMapDTOImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final dynamic id;
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
  @override
  @JsonKey(name: 'authorID')
  final dynamic authorId;
  @override
  @JsonKey(name: 'body')
  final BodyDTO? body;
  final List<dynamic>? _ranges;
  @override
  @JsonKey(name: 'ranges')
  List<dynamic>? get ranges {
    final value = _ranges;
    if (value == null) return null;
    if (_ranges is EqualUnmodifiableListView) return _ranges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'timestamp')
  final TimestampDTO? timestamp;
  @override
  @JsonKey(name: 'targetID')
  final dynamic targetId;
  @override
  @JsonKey(name: 'ogURL')
  final String? ogUrl;
  @override
  @JsonKey(name: 'likeCount')
  final int? likeCount;
  @override
  @JsonKey(name: 'hasLiked')
  final bool? hasLiked;
  @override
  @JsonKey(name: 'canLike')
  final bool? canLike;
  @override
  @JsonKey(name: 'canEdit')
  final bool? canEdit;
  @override
  @JsonKey(name: 'hidden')
  final bool? hidden;
  final List<dynamic>? _highlightedWords;
  @override
  @JsonKey(name: 'highlightedWords')
  List<dynamic>? get highlightedWords {
    final value = _highlightedWords;
    if (value == null) return null;
    if (_highlightedWords is EqualUnmodifiableListView)
      return _highlightedWords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'reportURI')
  final String? reportUri;
  @override
  @JsonKey(name: 'spamCount')
  final int? spamCount;
  @override
  @JsonKey(name: 'canEmbed')
  final bool? canEmbed;
  @override
  @JsonKey(name: 'public_replies')
  final PublicRepliesDTO? publicReplies;

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$IdMapDTOImplCopyWith<_$IdMapDTOImpl> get copyWith =>
      __$$IdMapDTOImplCopyWithImpl<_$IdMapDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdMapDTOImplToJson(
      this,
    );
  }
}

abstract class _IdMapDTO extends IdMapDTO {
  const factory _IdMapDTO(
      {@JsonKey(name: 'id') final dynamic id,
      @JsonKey(name: 'name') final String? name,
      @JsonKey(name: 'thumbSrc') final String? thumbSrc,
      @JsonKey(name: 'uri') final String? uri,
      @JsonKey(name: 'isVerified') final bool? isVerified,
      @JsonKey(name: 'type') final Type? type,
      @JsonKey(name: 'authorID') final dynamic authorId,
      @JsonKey(name: 'body') final BodyDTO? body,
      @JsonKey(name: 'ranges') final List<dynamic>? ranges,
      @JsonKey(name: 'timestamp') final TimestampDTO? timestamp,
      @JsonKey(name: 'targetID') final dynamic targetId,
      @JsonKey(name: 'ogURL') final String? ogUrl,
      @JsonKey(name: 'likeCount') final int? likeCount,
      @JsonKey(name: 'hasLiked') final bool? hasLiked,
      @JsonKey(name: 'canLike') final bool? canLike,
      @JsonKey(name: 'canEdit') final bool? canEdit,
      @JsonKey(name: 'hidden') final bool? hidden,
      @JsonKey(name: 'highlightedWords') final List<dynamic>? highlightedWords,
      @JsonKey(name: 'reportURI') final String? reportUri,
      @JsonKey(name: 'spamCount') final int? spamCount,
      @JsonKey(name: 'canEmbed') final bool? canEmbed,
      @JsonKey(name: 'public_replies')
      final PublicRepliesDTO? publicReplies}) = _$IdMapDTOImpl;
  const _IdMapDTO._() : super._();

  factory _IdMapDTO.fromJson(Map<String, dynamic> json) =
      _$IdMapDTOImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  dynamic get id;
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
  @override
  @JsonKey(name: 'authorID')
  dynamic get authorId;
  @override
  @JsonKey(name: 'body')
  BodyDTO? get body;
  @override
  @JsonKey(name: 'ranges')
  List<dynamic>? get ranges;
  @override
  @JsonKey(name: 'timestamp')
  TimestampDTO? get timestamp;
  @override
  @JsonKey(name: 'targetID')
  dynamic get targetId;
  @override
  @JsonKey(name: 'ogURL')
  String? get ogUrl;
  @override
  @JsonKey(name: 'likeCount')
  int? get likeCount;
  @override
  @JsonKey(name: 'hasLiked')
  bool? get hasLiked;
  @override
  @JsonKey(name: 'canLike')
  bool? get canLike;
  @override
  @JsonKey(name: 'canEdit')
  bool? get canEdit;
  @override
  @JsonKey(name: 'hidden')
  bool? get hidden;
  @override
  @JsonKey(name: 'highlightedWords')
  List<dynamic>? get highlightedWords;
  @override
  @JsonKey(name: 'reportURI')
  String? get reportUri;
  @override
  @JsonKey(name: 'spamCount')
  int? get spamCount;
  @override
  @JsonKey(name: 'canEmbed')
  bool? get canEmbed;
  @override
  @JsonKey(name: 'public_replies')
  PublicRepliesDTO? get publicReplies;

  /// Create a copy of IdMapDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$IdMapDTOImplCopyWith<_$IdMapDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BodyDTO _$BodyDTOFromJson(Map<String, dynamic> json) {
  return _BodyDTO.fromJson(json);
}

/// @nodoc
mixin _$BodyDTO {
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this BodyDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BodyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BodyDTOCopyWith<BodyDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BodyDTOCopyWith<$Res> {
  factory $BodyDTOCopyWith(BodyDTO value, $Res Function(BodyDTO) then) =
      _$BodyDTOCopyWithImpl<$Res, BodyDTO>;
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$BodyDTOCopyWithImpl<$Res, $Val extends BodyDTO>
    implements $BodyDTOCopyWith<$Res> {
  _$BodyDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BodyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BodyDTOImplCopyWith<$Res> implements $BodyDTOCopyWith<$Res> {
  factory _$$BodyDTOImplCopyWith(
          _$BodyDTOImpl value, $Res Function(_$BodyDTOImpl) then) =
      __$$BodyDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$BodyDTOImplCopyWithImpl<$Res>
    extends _$BodyDTOCopyWithImpl<$Res, _$BodyDTOImpl>
    implements _$$BodyDTOImplCopyWith<$Res> {
  __$$BodyDTOImplCopyWithImpl(
      _$BodyDTOImpl _value, $Res Function(_$BodyDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of BodyDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = freezed,
  }) {
    return _then(_$BodyDTOImpl(
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BodyDTOImpl extends _BodyDTO {
  const _$BodyDTOImpl({@JsonKey(name: 'text') this.text}) : super._();

  factory _$BodyDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$BodyDTOImplFromJson(json);

  @override
  @JsonKey(name: 'text')
  final String? text;

  /// Create a copy of BodyDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BodyDTOImplCopyWith<_$BodyDTOImpl> get copyWith =>
      __$$BodyDTOImplCopyWithImpl<_$BodyDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BodyDTOImplToJson(
      this,
    );
  }
}

abstract class _BodyDTO extends BodyDTO {
  const factory _BodyDTO({@JsonKey(name: 'text') final String? text}) =
      _$BodyDTOImpl;
  const _BodyDTO._() : super._();

  factory _BodyDTO.fromJson(Map<String, dynamic> json) = _$BodyDTOImpl.fromJson;

  @override
  @JsonKey(name: 'text')
  String? get text;

  /// Create a copy of BodyDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BodyDTOImplCopyWith<_$BodyDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PublicRepliesDTO _$PublicRepliesDTOFromJson(Map<String, dynamic> json) {
  return _PublicRepliesDTO.fromJson(json);
}

/// @nodoc
mixin _$PublicRepliesDTO {
  @JsonKey(name: 'totalCount')
  int? get totalCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'commentIDs')
  List<dynamic>? get commentIDs => throw _privateConstructorUsedError;

  /// Serializes this PublicRepliesDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PublicRepliesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PublicRepliesDTOCopyWith<PublicRepliesDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicRepliesDTOCopyWith<$Res> {
  factory $PublicRepliesDTOCopyWith(
          PublicRepliesDTO value, $Res Function(PublicRepliesDTO) then) =
      _$PublicRepliesDTOCopyWithImpl<$Res, PublicRepliesDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'commentIDs') List<dynamic>? commentIDs});
}

/// @nodoc
class _$PublicRepliesDTOCopyWithImpl<$Res, $Val extends PublicRepliesDTO>
    implements $PublicRepliesDTOCopyWith<$Res> {
  _$PublicRepliesDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicRepliesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? commentIDs = freezed,
  }) {
    return _then(_value.copyWith(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentIDs: freezed == commentIDs
          ? _value.commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PublicRepliesDTOImplCopyWith<$Res>
    implements $PublicRepliesDTOCopyWith<$Res> {
  factory _$$PublicRepliesDTOImplCopyWith(_$PublicRepliesDTOImpl value,
          $Res Function(_$PublicRepliesDTOImpl) then) =
      __$$PublicRepliesDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'totalCount') int? totalCount,
      @JsonKey(name: 'commentIDs') List<dynamic>? commentIDs});
}

/// @nodoc
class __$$PublicRepliesDTOImplCopyWithImpl<$Res>
    extends _$PublicRepliesDTOCopyWithImpl<$Res, _$PublicRepliesDTOImpl>
    implements _$$PublicRepliesDTOImplCopyWith<$Res> {
  __$$PublicRepliesDTOImplCopyWithImpl(_$PublicRepliesDTOImpl _value,
      $Res Function(_$PublicRepliesDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicRepliesDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalCount = freezed,
    Object? commentIDs = freezed,
  }) {
    return _then(_$PublicRepliesDTOImpl(
      totalCount: freezed == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentIDs: freezed == commentIDs
          ? _value._commentIDs
          : commentIDs // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PublicRepliesDTOImpl extends _PublicRepliesDTO {
  const _$PublicRepliesDTOImpl(
      {@JsonKey(name: 'totalCount') this.totalCount,
      @JsonKey(name: 'commentIDs') final List<dynamic>? commentIDs})
      : _commentIDs = commentIDs,
        super._();

  factory _$PublicRepliesDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PublicRepliesDTOImplFromJson(json);

  @override
  @JsonKey(name: 'totalCount')
  final int? totalCount;
  final List<dynamic>? _commentIDs;
  @override
  @JsonKey(name: 'commentIDs')
  List<dynamic>? get commentIDs {
    final value = _commentIDs;
    if (value == null) return null;
    if (_commentIDs is EqualUnmodifiableListView) return _commentIDs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of PublicRepliesDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PublicRepliesDTOImplCopyWith<_$PublicRepliesDTOImpl> get copyWith =>
      __$$PublicRepliesDTOImplCopyWithImpl<_$PublicRepliesDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PublicRepliesDTOImplToJson(
      this,
    );
  }
}

abstract class _PublicRepliesDTO extends PublicRepliesDTO {
  const factory _PublicRepliesDTO(
          {@JsonKey(name: 'totalCount') final int? totalCount,
          @JsonKey(name: 'commentIDs') final List<dynamic>? commentIDs}) =
      _$PublicRepliesDTOImpl;
  const _PublicRepliesDTO._() : super._();

  factory _PublicRepliesDTO.fromJson(Map<String, dynamic> json) =
      _$PublicRepliesDTOImpl.fromJson;

  @override
  @JsonKey(name: 'totalCount')
  int? get totalCount;
  @override
  @JsonKey(name: 'commentIDs')
  List<dynamic>? get commentIDs;

  /// Create a copy of PublicRepliesDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PublicRepliesDTOImplCopyWith<_$PublicRepliesDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TimestampDTO _$TimestampDTOFromJson(Map<String, dynamic> json) {
  return _TimestampDTO.fromJson(json);
}

/// @nodoc
mixin _$TimestampDTO {
  @JsonKey(name: 'time')
  int? get time => throw _privateConstructorUsedError;
  @JsonKey(name: 'text')
  String? get text => throw _privateConstructorUsedError;

  /// Serializes this TimestampDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TimestampDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TimestampDTOCopyWith<TimestampDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimestampDTOCopyWith<$Res> {
  factory $TimestampDTOCopyWith(
          TimestampDTO value, $Res Function(TimestampDTO) then) =
      _$TimestampDTOCopyWithImpl<$Res, TimestampDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time, @JsonKey(name: 'text') String? text});
}

/// @nodoc
class _$TimestampDTOCopyWithImpl<$Res, $Val extends TimestampDTO>
    implements $TimestampDTOCopyWith<$Res> {
  _$TimestampDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TimestampDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TimestampDTOImplCopyWith<$Res>
    implements $TimestampDTOCopyWith<$Res> {
  factory _$$TimestampDTOImplCopyWith(
          _$TimestampDTOImpl value, $Res Function(_$TimestampDTOImpl) then) =
      __$$TimestampDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time') int? time, @JsonKey(name: 'text') String? text});
}

/// @nodoc
class __$$TimestampDTOImplCopyWithImpl<$Res>
    extends _$TimestampDTOCopyWithImpl<$Res, _$TimestampDTOImpl>
    implements _$$TimestampDTOImplCopyWith<$Res> {
  __$$TimestampDTOImplCopyWithImpl(
      _$TimestampDTOImpl _value, $Res Function(_$TimestampDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of TimestampDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? time = freezed,
    Object? text = freezed,
  }) {
    return _then(_$TimestampDTOImpl(
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimestampDTOImpl extends _TimestampDTO {
  const _$TimestampDTOImpl(
      {@JsonKey(name: 'time') this.time, @JsonKey(name: 'text') this.text})
      : super._();

  factory _$TimestampDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimestampDTOImplFromJson(json);

  @override
  @JsonKey(name: 'time')
  final int? time;
  @override
  @JsonKey(name: 'text')
  final String? text;

  /// Create a copy of TimestampDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TimestampDTOImplCopyWith<_$TimestampDTOImpl> get copyWith =>
      __$$TimestampDTOImplCopyWithImpl<_$TimestampDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TimestampDTOImplToJson(
      this,
    );
  }
}

abstract class _TimestampDTO extends TimestampDTO {
  const factory _TimestampDTO(
      {@JsonKey(name: 'time') final int? time,
      @JsonKey(name: 'text') final String? text}) = _$TimestampDTOImpl;
  const _TimestampDTO._() : super._();

  factory _TimestampDTO.fromJson(Map<String, dynamic> json) =
      _$TimestampDTOImpl.fromJson;

  @override
  @JsonKey(name: 'time')
  int? get time;
  @override
  @JsonKey(name: 'text')
  String? get text;

  /// Create a copy of TimestampDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TimestampDTOImplCopyWith<_$TimestampDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
