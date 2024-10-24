// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CommentDTO _$CommentDTOFromJson(Map<String, dynamic> json) {
  return _CommentDTO.fromJson(json);
}

/// @nodoc
mixin _$CommentDTO {
  String get id => throw _privateConstructorUsedError;
  String get authorName => throw _privateConstructorUsedError;
  String get authorThumbSrc => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  List<CommentDTO> get replies => throw _privateConstructorUsedError;

  /// Serializes this CommentDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentDTOCopyWith<CommentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentDTOCopyWith<$Res> {
  factory $CommentDTOCopyWith(
          CommentDTO value, $Res Function(CommentDTO) then) =
      _$CommentDTOCopyWithImpl<$Res, CommentDTO>;
  @useResult
  $Res call(
      {String id,
      String authorName,
      String authorThumbSrc,
      String body,
      String timestamp,
      int likeCount,
      List<CommentDTO> replies});
}

/// @nodoc
class _$CommentDTOCopyWithImpl<$Res, $Val extends CommentDTO>
    implements $CommentDTOCopyWith<$Res> {
  _$CommentDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? authorThumbSrc = null,
    Object? body = null,
    Object? timestamp = null,
    Object? likeCount = null,
    Object? replies = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorThumbSrc: null == authorThumbSrc
          ? _value.authorThumbSrc
          : authorThumbSrc // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replies: null == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentDTOImplCopyWith<$Res>
    implements $CommentDTOCopyWith<$Res> {
  factory _$$CommentDTOImplCopyWith(
          _$CommentDTOImpl value, $Res Function(_$CommentDTOImpl) then) =
      __$$CommentDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String authorName,
      String authorThumbSrc,
      String body,
      String timestamp,
      int likeCount,
      List<CommentDTO> replies});
}

/// @nodoc
class __$$CommentDTOImplCopyWithImpl<$Res>
    extends _$CommentDTOCopyWithImpl<$Res, _$CommentDTOImpl>
    implements _$$CommentDTOImplCopyWith<$Res> {
  __$$CommentDTOImplCopyWithImpl(
      _$CommentDTOImpl _value, $Res Function(_$CommentDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorName = null,
    Object? authorThumbSrc = null,
    Object? body = null,
    Object? timestamp = null,
    Object? likeCount = null,
    Object? replies = null,
  }) {
    return _then(_$CommentDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      authorThumbSrc: null == authorThumbSrc
          ? _value.authorThumbSrc
          : authorThumbSrc // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      replies: null == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<CommentDTO>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentDTOImpl extends _CommentDTO {
  const _$CommentDTOImpl(
      {required this.id,
      required this.authorName,
      required this.authorThumbSrc,
      required this.body,
      required this.timestamp,
      required this.likeCount,
      final List<CommentDTO> replies = const []})
      : _replies = replies,
        super._();

  factory _$CommentDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String authorName;
  @override
  final String authorThumbSrc;
  @override
  final String body;
  @override
  final String timestamp;
  @override
  final int likeCount;
  final List<CommentDTO> _replies;
  @override
  @JsonKey()
  List<CommentDTO> get replies {
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_replies);
  }

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentDTOImplCopyWith<_$CommentDTOImpl> get copyWith =>
      __$$CommentDTOImplCopyWithImpl<_$CommentDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentDTOImplToJson(
      this,
    );
  }
}

abstract class _CommentDTO extends CommentDTO {
  const factory _CommentDTO(
      {required final String id,
      required final String authorName,
      required final String authorThumbSrc,
      required final String body,
      required final String timestamp,
      required final int likeCount,
      final List<CommentDTO> replies}) = _$CommentDTOImpl;
  const _CommentDTO._() : super._();

  factory _CommentDTO.fromJson(Map<String, dynamic> json) =
      _$CommentDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get authorName;
  @override
  String get authorThumbSrc;
  @override
  String get body;
  @override
  String get timestamp;
  @override
  int get likeCount;
  @override
  List<CommentDTO> get replies;

  /// Create a copy of CommentDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentDTOImplCopyWith<_$CommentDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
