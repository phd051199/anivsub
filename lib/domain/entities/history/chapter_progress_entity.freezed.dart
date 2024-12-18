// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_progress_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapterProgressEntity _$ChapterProgressEntityFromJson(
    Map<String, dynamic> json) {
  return _ChapterProgressEntity.fromJson(json);
}

/// @nodoc
mixin _$ChapterProgressEntity {
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'cur')
  double? get cur => throw _privateConstructorUsedError;
  @JsonKey(name: 'dur')
  double? get dur => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'chap_id')
  String? get chapId => throw _privateConstructorUsedError;

  /// Serializes this ChapterProgressEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterProgressEntityCopyWith<ChapterProgressEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterProgressEntityCopyWith<$Res> {
  factory $ChapterProgressEntityCopyWith(ChapterProgressEntity value,
          $Res Function(ChapterProgressEntity) then) =
      _$ChapterProgressEntityCopyWithImpl<$Res, ChapterProgressEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'cur') double? cur,
      @JsonKey(name: 'dur') double? dur,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class _$ChapterProgressEntityCopyWithImpl<$Res,
        $Val extends ChapterProgressEntity>
    implements $ChapterProgressEntityCopyWith<$Res> {
  _$ChapterProgressEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? cur = freezed,
    Object? dur = freezed,
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? chapId = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cur: freezed == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as double?,
      dur: freezed == dur
          ? _value.dur
          : dur // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      chapId: freezed == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterProgressEntityImplCopyWith<$Res>
    implements $ChapterProgressEntityCopyWith<$Res> {
  factory _$$ChapterProgressEntityImplCopyWith(
          _$ChapterProgressEntityImpl value,
          $Res Function(_$ChapterProgressEntityImpl) then) =
      __$$ChapterProgressEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'cur') double? cur,
      @JsonKey(name: 'dur') double? dur,
      @JsonKey(name: 'name') String? name,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'chap_id') String? chapId});
}

/// @nodoc
class __$$ChapterProgressEntityImplCopyWithImpl<$Res>
    extends _$ChapterProgressEntityCopyWithImpl<$Res,
        _$ChapterProgressEntityImpl>
    implements _$$ChapterProgressEntityImplCopyWith<$Res> {
  __$$ChapterProgressEntityImplCopyWithImpl(_$ChapterProgressEntityImpl _value,
      $Res Function(_$ChapterProgressEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? cur = freezed,
    Object? dur = freezed,
    Object? name = freezed,
    Object? updatedAt = freezed,
    Object? chapId = freezed,
  }) {
    return _then(_$ChapterProgressEntityImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cur: freezed == cur
          ? _value.cur
          : cur // ignore: cast_nullable_to_non_nullable
              as double?,
      dur: freezed == dur
          ? _value.dur
          : dur // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      chapId: freezed == chapId
          ? _value.chapId
          : chapId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterProgressEntityImpl extends _ChapterProgressEntity {
  const _$ChapterProgressEntityImpl(
      {@JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'cur') this.cur,
      @JsonKey(name: 'dur') this.dur,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'chap_id') this.chapId})
      : super._();

  factory _$ChapterProgressEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterProgressEntityImplFromJson(json);

  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'cur')
  final double? cur;
  @override
  @JsonKey(name: 'dur')
  final double? dur;
  @override
  @JsonKey(name: 'name')
  final String? name;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'chap_id')
  final String? chapId;

  /// Create a copy of ChapterProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterProgressEntityImplCopyWith<_$ChapterProgressEntityImpl>
      get copyWith => __$$ChapterProgressEntityImplCopyWithImpl<
          _$ChapterProgressEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterProgressEntityImplToJson(
      this,
    );
  }
}

abstract class _ChapterProgressEntity extends ChapterProgressEntity {
  const factory _ChapterProgressEntity(
          {@JsonKey(name: 'created_at') final DateTime? createdAt,
          @JsonKey(name: 'cur') final double? cur,
          @JsonKey(name: 'dur') final double? dur,
          @JsonKey(name: 'name') final String? name,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'chap_id') final String? chapId}) =
      _$ChapterProgressEntityImpl;
  const _ChapterProgressEntity._() : super._();

  factory _ChapterProgressEntity.fromJson(Map<String, dynamic> json) =
      _$ChapterProgressEntityImpl.fromJson;

  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'cur')
  double? get cur;
  @override
  @JsonKey(name: 'dur')
  double? get dur;
  @override
  @JsonKey(name: 'name')
  String? get name;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'chap_id')
  String? get chapId;

  /// Create a copy of ChapterProgressEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterProgressEntityImplCopyWith<_$ChapterProgressEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
