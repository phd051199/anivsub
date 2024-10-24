// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_user_session_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshUserSessionRequestDTO _$RefreshUserSessionRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _RefreshUserSessionRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshUserSessionRequestDTO {
  String get refreshToken => throw _privateConstructorUsedError;
  int? get expiresInMins => throw _privateConstructorUsedError;

  /// Serializes this RefreshUserSessionRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshUserSessionRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshUserSessionRequestDTOCopyWith<RefreshUserSessionRequestDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshUserSessionRequestDTOCopyWith<$Res> {
  factory $RefreshUserSessionRequestDTOCopyWith(
          RefreshUserSessionRequestDTO value,
          $Res Function(RefreshUserSessionRequestDTO) then) =
      _$RefreshUserSessionRequestDTOCopyWithImpl<$Res,
          RefreshUserSessionRequestDTO>;
  @useResult
  $Res call({String refreshToken, int? expiresInMins});
}

/// @nodoc
class _$RefreshUserSessionRequestDTOCopyWithImpl<$Res,
        $Val extends RefreshUserSessionRequestDTO>
    implements $RefreshUserSessionRequestDTOCopyWith<$Res> {
  _$RefreshUserSessionRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshUserSessionRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? expiresInMins = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInMins: freezed == expiresInMins
          ? _value.expiresInMins
          : expiresInMins // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshUserSessionRequestDTOImplCopyWith<$Res>
    implements $RefreshUserSessionRequestDTOCopyWith<$Res> {
  factory _$$RefreshUserSessionRequestDTOImplCopyWith(
          _$RefreshUserSessionRequestDTOImpl value,
          $Res Function(_$RefreshUserSessionRequestDTOImpl) then) =
      __$$RefreshUserSessionRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String refreshToken, int? expiresInMins});
}

/// @nodoc
class __$$RefreshUserSessionRequestDTOImplCopyWithImpl<$Res>
    extends _$RefreshUserSessionRequestDTOCopyWithImpl<$Res,
        _$RefreshUserSessionRequestDTOImpl>
    implements _$$RefreshUserSessionRequestDTOImplCopyWith<$Res> {
  __$$RefreshUserSessionRequestDTOImplCopyWithImpl(
      _$RefreshUserSessionRequestDTOImpl _value,
      $Res Function(_$RefreshUserSessionRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshUserSessionRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = null,
    Object? expiresInMins = freezed,
  }) {
    return _then(_$RefreshUserSessionRequestDTOImpl(
      refreshToken: null == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      expiresInMins: freezed == expiresInMins
          ? _value.expiresInMins
          : expiresInMins // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshUserSessionRequestDTOImpl extends _RefreshUserSessionRequestDTO {
  const _$RefreshUserSessionRequestDTOImpl(
      {required this.refreshToken, this.expiresInMins})
      : super._();

  factory _$RefreshUserSessionRequestDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RefreshUserSessionRequestDTOImplFromJson(json);

  @override
  final String refreshToken;
  @override
  final int? expiresInMins;

  /// Create a copy of RefreshUserSessionRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshUserSessionRequestDTOImplCopyWith<
          _$RefreshUserSessionRequestDTOImpl>
      get copyWith => __$$RefreshUserSessionRequestDTOImplCopyWithImpl<
          _$RefreshUserSessionRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshUserSessionRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _RefreshUserSessionRequestDTO
    extends RefreshUserSessionRequestDTO {
  const factory _RefreshUserSessionRequestDTO(
      {required final String refreshToken,
      final int? expiresInMins}) = _$RefreshUserSessionRequestDTOImpl;
  const _RefreshUserSessionRequestDTO._() : super._();

  factory _RefreshUserSessionRequestDTO.fromJson(Map<String, dynamic> json) =
      _$RefreshUserSessionRequestDTOImpl.fromJson;

  @override
  String get refreshToken;
  @override
  int? get expiresInMins;

  /// Create a copy of RefreshUserSessionRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshUserSessionRequestDTOImplCopyWith<
          _$RefreshUserSessionRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
