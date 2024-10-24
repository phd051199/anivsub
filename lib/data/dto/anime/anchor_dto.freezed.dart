// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'anchor_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Anchor _$AnchorFromJson(Map<String, dynamic> json) {
  return _Anchor.fromJson(json);
}

/// @nodoc
mixin _$Anchor {
  String get name => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  /// Serializes this Anchor to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Anchor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnchorCopyWith<Anchor> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnchorCopyWith<$Res> {
  factory $AnchorCopyWith(Anchor value, $Res Function(Anchor) then) =
      _$AnchorCopyWithImpl<$Res, Anchor>;
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class _$AnchorCopyWithImpl<$Res, $Val extends Anchor>
    implements $AnchorCopyWith<$Res> {
  _$AnchorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Anchor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnchorImplCopyWith<$Res> implements $AnchorCopyWith<$Res> {
  factory _$$AnchorImplCopyWith(
          _$AnchorImpl value, $Res Function(_$AnchorImpl) then) =
      __$$AnchorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String path});
}

/// @nodoc
class __$$AnchorImplCopyWithImpl<$Res>
    extends _$AnchorCopyWithImpl<$Res, _$AnchorImpl>
    implements _$$AnchorImplCopyWith<$Res> {
  __$$AnchorImplCopyWithImpl(
      _$AnchorImpl _value, $Res Function(_$AnchorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Anchor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? path = null,
  }) {
    return _then(_$AnchorImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AnchorImpl implements _Anchor {
  const _$AnchorImpl({required this.name, required this.path});

  factory _$AnchorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AnchorImplFromJson(json);

  @override
  final String name;
  @override
  final String path;

  @override
  String toString() {
    return 'Anchor(name: $name, path: $path)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnchorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.path, path) || other.path == path));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, path);

  /// Create a copy of Anchor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnchorImplCopyWith<_$AnchorImpl> get copyWith =>
      __$$AnchorImplCopyWithImpl<_$AnchorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AnchorImplToJson(
      this,
    );
  }
}

abstract class _Anchor implements Anchor {
  const factory _Anchor(
      {required final String name, required final String path}) = _$AnchorImpl;

  factory _Anchor.fromJson(Map<String, dynamic> json) = _$AnchorImpl.fromJson;

  @override
  String get name;
  @override
  String get path;

  /// Create a copy of Anchor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnchorImplCopyWith<_$AnchorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
