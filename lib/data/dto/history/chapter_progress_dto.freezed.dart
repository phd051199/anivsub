// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_progress_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterProgressDTO _$ChapterProgressDTOFromJson(Map<String, dynamic> json) {
  return _ChapterProgressDTO.fromJson(json);
}

/// @nodoc
mixin _$ChapterProgressDTO {
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur')
  double get cur => throw _privateConstructorUsedError;
  @JsonKey(name: 'dur')
  double get dur => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'chap_id')
  String get chapId => throw _privateConstructorUsedError;

  /// Serializes this ChapterProgressDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterProgressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterProgressDTOCopyWith<ChapterProgressDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterProgressDTOCopyWith<$Res> {
  factory $ChapterProgressDTOCopyWith(
          ChapterProgressDTO value, $Res Function(ChapterProgressDTO) then) =
      _$ChapterProgressDTOCopyWithImpl<$Res, ChapterProgressDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'cur') double cur,
      @JsonKey(name: 'dur') double dur,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'chap_id') String chapId});
}

/// @nodoc
class _$ChapterProgressDTOCopyWithImpl<$Res, $Val extends ChapterProgressDTO>
    implements $ChapterProgressDTOCopyWith<$Res> {
  _$ChapterProgressDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterProgressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? cur = null,
    Object? dur = null,
    Object? name = null,
    Object? updatedAt = null,
    Object? chapId = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cur: null == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as double,
      dur: null == dur
          ? _value.dur
          : dur // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chapId: null == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterProgressDTOImplCopyWith<$Res>
    implements $ChapterProgressDTOCopyWith<$Res> {
  factory _$$ChapterProgressDTOImplCopyWith(_$ChapterProgressDTOImpl value,
          $Res Function(_$ChapterProgressDTOImpl) then) =
      __$$ChapterProgressDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'cur') double cur,
      @JsonKey(name: 'dur') double dur,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'chap_id') String chapId});
}

/// @nodoc
class __$$ChapterProgressDTOImplCopyWithImpl<$Res>
    extends _$ChapterProgressDTOCopyWithImpl<$Res, _$ChapterProgressDTOImpl>
    implements _$$ChapterProgressDTOImplCopyWith<$Res> {
  __$$ChapterProgressDTOImplCopyWithImpl(_$ChapterProgressDTOImpl _value,
      $Res Function(_$ChapterProgressDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterProgressDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
    Object? cur = null,
    Object? dur = null,
    Object? name = null,
    Object? updatedAt = null,
    Object? chapId = null,
  }) {
    return _then(_$ChapterProgressDTOImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      cur: null == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as double,
      dur: null == dur
          ? _value.dur
          : dur // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      chapId: null == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterProgressDTOImpl extends _ChapterProgressDTO {
  const _$ChapterProgressDTOImpl(
      {@JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'cur') required this.cur,
      @JsonKey(name: 'dur') required this.dur,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'chap_id') required this.chapId})
      : super._();

  factory _$ChapterProgressDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterProgressDTOImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'cur')
  final double cur;
  @override
  @JsonKey(name: 'dur')
  final double dur;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'chap_id')
  final String chapId;

  /// Create a copy of ChapterProgressDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterProgressDTOImplCopyWith<_$ChapterProgressDTOImpl> get copyWith =>
      __$$ChapterProgressDTOImplCopyWithImpl<_$ChapterProgressDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterProgressDTOImplToJson(
      this,
    );
  }
}

abstract class _ChapterProgressDTO extends ChapterProgressDTO {
  const factory _ChapterProgressDTO(
          {@JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'cur') required final double cur,
          @JsonKey(name: 'dur') required final double dur,
          @JsonKey(name: 'name') required final String name,
          @JsonKey(name: 'updated_at') required final DateTime updatedAt,
          @JsonKey(name: 'chap_id') required final String chapId}) =
      _$ChapterProgressDTOImpl;
  const _ChapterProgressDTO._() : super._();

  factory _ChapterProgressDTO.fromJson(Map<String, dynamic> json) =
      _$ChapterProgressDTOImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'cur')
  double get cur;
  @override
  @JsonKey(name: 'dur')
  double get dur;
  @override
  @JsonKey(name: 'name')
  String get name;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'chap_id')
  String get chapId;

  /// Create a copy of ChapterProgressDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterProgressDTOImplCopyWith<_$ChapterProgressDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
