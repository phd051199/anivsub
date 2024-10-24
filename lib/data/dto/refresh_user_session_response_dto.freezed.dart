// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'refresh_user_session_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RefreshUserSessionResponseDTO _$RefreshUserSessionResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _RefreshUserSessionResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$RefreshUserSessionResponseDTO {
  String? get accessToken => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;

  /// Serializes this RefreshUserSessionResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RefreshUserSessionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshUserSessionResponseDTOCopyWith<RefreshUserSessionResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshUserSessionResponseDTOCopyWith<$Res> {
  factory $RefreshUserSessionResponseDTOCopyWith(
          RefreshUserSessionResponseDTO value,
          $Res Function(RefreshUserSessionResponseDTO) then) =
      _$RefreshUserSessionResponseDTOCopyWithImpl<$Res,
          RefreshUserSessionResponseDTO>;
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class _$RefreshUserSessionResponseDTOCopyWithImpl<$Res,
        $Val extends RefreshUserSessionResponseDTO>
    implements $RefreshUserSessionResponseDTOCopyWith<$Res> {
  _$RefreshUserSessionResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshUserSessionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_value.copyWith(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshUserSessionResponseDTOImplCopyWith<$Res>
    implements $RefreshUserSessionResponseDTOCopyWith<$Res> {
  factory _$$RefreshUserSessionResponseDTOImplCopyWith(
          _$RefreshUserSessionResponseDTOImpl value,
          $Res Function(_$RefreshUserSessionResponseDTOImpl) then) =
      __$$RefreshUserSessionResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? accessToken, String? refreshToken});
}

/// @nodoc
class __$$RefreshUserSessionResponseDTOImplCopyWithImpl<$Res>
    extends _$RefreshUserSessionResponseDTOCopyWithImpl<$Res,
        _$RefreshUserSessionResponseDTOImpl>
    implements _$$RefreshUserSessionResponseDTOImplCopyWith<$Res> {
  __$$RefreshUserSessionResponseDTOImplCopyWithImpl(
      _$RefreshUserSessionResponseDTOImpl _value,
      $Res Function(_$RefreshUserSessionResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshUserSessionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? accessToken = freezed,
    Object? refreshToken = freezed,
  }) {
    return _then(_$RefreshUserSessionResponseDTOImpl(
      accessToken: freezed == accessToken
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RefreshUserSessionResponseDTOImpl
    extends _RefreshUserSessionResponseDTO {
  const _$RefreshUserSessionResponseDTOImpl(
      {required this.accessToken, required this.refreshToken})
      : super._();

  factory _$RefreshUserSessionResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RefreshUserSessionResponseDTOImplFromJson(json);

  @override
  final String? accessToken;
  @override
  final String? refreshToken;

  /// Create a copy of RefreshUserSessionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshUserSessionResponseDTOImplCopyWith<
          _$RefreshUserSessionResponseDTOImpl>
      get copyWith => __$$RefreshUserSessionResponseDTOImplCopyWithImpl<
          _$RefreshUserSessionResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RefreshUserSessionResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _RefreshUserSessionResponseDTO
    extends RefreshUserSessionResponseDTO {
  const factory _RefreshUserSessionResponseDTO(
          {required final String? accessToken,
          required final String? refreshToken}) =
      _$RefreshUserSessionResponseDTOImpl;
  const _RefreshUserSessionResponseDTO._() : super._();

  factory _RefreshUserSessionResponseDTO.fromJson(Map<String, dynamic> json) =
      _$RefreshUserSessionResponseDTOImpl.fromJson;

  @override
  String? get accessToken;
  @override
  String? get refreshToken;

  /// Create a copy of RefreshUserSessionResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshUserSessionResponseDTOImplCopyWith<
          _$RefreshUserSessionResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
