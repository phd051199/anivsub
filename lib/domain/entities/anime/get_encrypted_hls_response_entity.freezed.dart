// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_encrypted_hls_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Link _$LinkFromJson(Map<String, dynamic> json) {
  return _Link.fromJson(json);
}

/// @nodoc
mixin _$Link {
  String get file => throw _privateConstructorUsedError;

  /// Serializes this Link to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LinkCopyWith<Link> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LinkCopyWith<$Res> {
  factory $LinkCopyWith(Link value, $Res Function(Link) then) =
      _$LinkCopyWithImpl<$Res, Link>;
  @useResult
  $Res call({String file});
}

/// @nodoc
class _$LinkCopyWithImpl<$Res, $Val extends Link>
    implements $LinkCopyWith<$Res> {
  _$LinkCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LinkImplCopyWith<$Res> implements $LinkCopyWith<$Res> {
  factory _$$LinkImplCopyWith(
          _$LinkImpl value, $Res Function(_$LinkImpl) then) =
      __$$LinkImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String file});
}

/// @nodoc
class __$$LinkImplCopyWithImpl<$Res>
    extends _$LinkCopyWithImpl<$Res, _$LinkImpl>
    implements _$$LinkImplCopyWith<$Res> {
  __$$LinkImplCopyWithImpl(_$LinkImpl _value, $Res Function(_$LinkImpl) _then)
      : super(_value, _then);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? file = null,
  }) {
    return _then(_$LinkImpl(
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LinkImpl implements _Link {
  const _$LinkImpl({required this.file});

  factory _$LinkImpl.fromJson(Map<String, dynamic> json) =>
      _$$LinkImplFromJson(json);

  @override
  final String file;

  @override
  String toString() {
    return 'Link(file: $file)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LinkImpl &&
            (identical(other.file, file) || other.file == file));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, file);

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      __$$LinkImplCopyWithImpl<_$LinkImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LinkImplToJson(
      this,
    );
  }
}

abstract class _Link implements Link {
  const factory _Link({required final String file}) = _$LinkImpl;

  factory _Link.fromJson(Map<String, dynamic> json) = _$LinkImpl.fromJson;

  @override
  String get file;

  /// Create a copy of Link
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LinkImplCopyWith<_$LinkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetEncryptedHlsResponseEntity {
  int get success => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Link> get link => throw _privateConstructorUsedError;
  String get playTech => throw _privateConstructorUsedError;

  /// Create a copy of GetEncryptedHlsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEncryptedHlsResponseEntityCopyWith<GetEncryptedHlsResponseEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEncryptedHlsResponseEntityCopyWith<$Res> {
  factory $GetEncryptedHlsResponseEntityCopyWith(
          GetEncryptedHlsResponseEntity value,
          $Res Function(GetEncryptedHlsResponseEntity) then) =
      _$GetEncryptedHlsResponseEntityCopyWithImpl<$Res,
          GetEncryptedHlsResponseEntity>;
  @useResult
  $Res call({int success, String title, List<Link> link, String playTech});
}

/// @nodoc
class _$GetEncryptedHlsResponseEntityCopyWithImpl<$Res,
        $Val extends GetEncryptedHlsResponseEntity>
    implements $GetEncryptedHlsResponseEntityCopyWith<$Res> {
  _$GetEncryptedHlsResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEncryptedHlsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? title = null,
    Object? link = null,
    Object? playTech = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      playTech: null == playTech
          ? _value.playTech
          : playTech // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEncryptedHlsResponseEntityImplCopyWith<$Res>
    implements $GetEncryptedHlsResponseEntityCopyWith<$Res> {
  factory _$$GetEncryptedHlsResponseEntityImplCopyWith(
          _$GetEncryptedHlsResponseEntityImpl value,
          $Res Function(_$GetEncryptedHlsResponseEntityImpl) then) =
      __$$GetEncryptedHlsResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int success, String title, List<Link> link, String playTech});
}

/// @nodoc
class __$$GetEncryptedHlsResponseEntityImplCopyWithImpl<$Res>
    extends _$GetEncryptedHlsResponseEntityCopyWithImpl<$Res,
        _$GetEncryptedHlsResponseEntityImpl>
    implements _$$GetEncryptedHlsResponseEntityImplCopyWith<$Res> {
  __$$GetEncryptedHlsResponseEntityImplCopyWithImpl(
      _$GetEncryptedHlsResponseEntityImpl _value,
      $Res Function(_$GetEncryptedHlsResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEncryptedHlsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? title = null,
    Object? link = null,
    Object? playTech = null,
  }) {
    return _then(_$GetEncryptedHlsResponseEntityImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value._link
          : link // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      playTech: null == playTech
          ? _value.playTech
          : playTech // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetEncryptedHlsResponseEntityImpl
    extends _GetEncryptedHlsResponseEntity {
  const _$GetEncryptedHlsResponseEntityImpl(
      {required this.success,
      required this.title,
      required final List<Link> link,
      required this.playTech})
      : _link = link,
        super._();

  @override
  final int success;
  @override
  final String title;
  final List<Link> _link;
  @override
  List<Link> get link {
    if (_link is EqualUnmodifiableListView) return _link;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_link);
  }

  @override
  final String playTech;

  /// Create a copy of GetEncryptedHlsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEncryptedHlsResponseEntityImplCopyWith<
          _$GetEncryptedHlsResponseEntityImpl>
      get copyWith => __$$GetEncryptedHlsResponseEntityImplCopyWithImpl<
          _$GetEncryptedHlsResponseEntityImpl>(this, _$identity);
}

abstract class _GetEncryptedHlsResponseEntity
    extends GetEncryptedHlsResponseEntity {
  const factory _GetEncryptedHlsResponseEntity(
      {required final int success,
      required final String title,
      required final List<Link> link,
      required final String playTech}) = _$GetEncryptedHlsResponseEntityImpl;
  const _GetEncryptedHlsResponseEntity._() : super._();

  @override
  int get success;
  @override
  String get title;
  @override
  List<Link> get link;
  @override
  String get playTech;

  /// Create a copy of GetEncryptedHlsResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEncryptedHlsResponseEntityImplCopyWith<
          _$GetEncryptedHlsResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
