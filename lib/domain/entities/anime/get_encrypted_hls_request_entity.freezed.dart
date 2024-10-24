// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_encrypted_hls_request_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEncryptedHlsRequestEntity _$GetEncryptedHlsRequestEntityFromJson(
    Map<String, dynamic> json) {
  return _GetEncryptedHlsRequestEntity.fromJson(json);
}

/// @nodoc
mixin _$GetEncryptedHlsRequestEntity {
  String get id => throw _privateConstructorUsedError;
  String get play => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get backuplinks => throw _privateConstructorUsedError;

  /// Serializes this GetEncryptedHlsRequestEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEncryptedHlsRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEncryptedHlsRequestEntityCopyWith<GetEncryptedHlsRequestEntity>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEncryptedHlsRequestEntityCopyWith<$Res> {
  factory $GetEncryptedHlsRequestEntityCopyWith(
          GetEncryptedHlsRequestEntity value,
          $Res Function(GetEncryptedHlsRequestEntity) then) =
      _$GetEncryptedHlsRequestEntityCopyWithImpl<$Res,
          GetEncryptedHlsRequestEntity>;
  @useResult
  $Res call({String id, String play, String link, String backuplinks});
}

/// @nodoc
class _$GetEncryptedHlsRequestEntityCopyWithImpl<$Res,
        $Val extends GetEncryptedHlsRequestEntity>
    implements $GetEncryptedHlsRequestEntityCopyWith<$Res> {
  _$GetEncryptedHlsRequestEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEncryptedHlsRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? link = null,
    Object? backuplinks = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      backuplinks: null == backuplinks
          ? _value.backuplinks
          : backuplinks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEncryptedHlsRequestEntityImplCopyWith<$Res>
    implements $GetEncryptedHlsRequestEntityCopyWith<$Res> {
  factory _$$GetEncryptedHlsRequestEntityImplCopyWith(
          _$GetEncryptedHlsRequestEntityImpl value,
          $Res Function(_$GetEncryptedHlsRequestEntityImpl) then) =
      __$$GetEncryptedHlsRequestEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String play, String link, String backuplinks});
}

/// @nodoc
class __$$GetEncryptedHlsRequestEntityImplCopyWithImpl<$Res>
    extends _$GetEncryptedHlsRequestEntityCopyWithImpl<$Res,
        _$GetEncryptedHlsRequestEntityImpl>
    implements _$$GetEncryptedHlsRequestEntityImplCopyWith<$Res> {
  __$$GetEncryptedHlsRequestEntityImplCopyWithImpl(
      _$GetEncryptedHlsRequestEntityImpl _value,
      $Res Function(_$GetEncryptedHlsRequestEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEncryptedHlsRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? link = null,
    Object? backuplinks = null,
  }) {
    return _then(_$GetEncryptedHlsRequestEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      backuplinks: null == backuplinks
          ? _value.backuplinks
          : backuplinks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEncryptedHlsRequestEntityImpl extends _GetEncryptedHlsRequestEntity {
  const _$GetEncryptedHlsRequestEntityImpl(
      {required this.id,
      required this.play,
      required this.link,
      this.backuplinks = '1'})
      : super._();

  factory _$GetEncryptedHlsRequestEntityImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEncryptedHlsRequestEntityImplFromJson(json);

  @override
  final String id;
  @override
  final String play;
  @override
  final String link;
  @override
  @JsonKey()
  final String backuplinks;

  /// Create a copy of GetEncryptedHlsRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEncryptedHlsRequestEntityImplCopyWith<
          _$GetEncryptedHlsRequestEntityImpl>
      get copyWith => __$$GetEncryptedHlsRequestEntityImplCopyWithImpl<
          _$GetEncryptedHlsRequestEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEncryptedHlsRequestEntityImplToJson(
      this,
    );
  }
}

abstract class _GetEncryptedHlsRequestEntity
    extends GetEncryptedHlsRequestEntity {
  const factory _GetEncryptedHlsRequestEntity(
      {required final String id,
      required final String play,
      required final String link,
      final String backuplinks}) = _$GetEncryptedHlsRequestEntityImpl;
  const _GetEncryptedHlsRequestEntity._() : super._();

  factory _GetEncryptedHlsRequestEntity.fromJson(Map<String, dynamic> json) =
      _$GetEncryptedHlsRequestEntityImpl.fromJson;

  @override
  String get id;
  @override
  String get play;
  @override
  String get link;
  @override
  String get backuplinks;

  /// Create a copy of GetEncryptedHlsRequestEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEncryptedHlsRequestEntityImplCopyWith<
          _$GetEncryptedHlsRequestEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
