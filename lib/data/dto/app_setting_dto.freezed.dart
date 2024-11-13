// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingDTO _$AppSettingDTOFromJson(Map<String, dynamic> json) {
  return _AppSettingDTO.fromJson(json);
}

/// @nodoc
mixin _$AppSettingDTO {
  int get themeMode => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  bool get skipIntro => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;

  /// Serializes this AppSettingDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingDTOCopyWith<AppSettingDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingDTOCopyWith<$Res> {
  factory $AppSettingDTOCopyWith(
          AppSettingDTO value, $Res Function(AppSettingDTO) then) =
      _$AppSettingDTOCopyWithImpl<$Res, AppSettingDTO>;
  @useResult
  $Res call({int themeMode, int color, bool skipIntro, String? host});
}

/// @nodoc
class _$AppSettingDTOCopyWithImpl<$Res, $Val extends AppSettingDTO>
    implements $AppSettingDTOCopyWith<$Res> {
  _$AppSettingDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = null,
    Object? skipIntro = null,
    Object? host = freezed,
  }) {
    return _then(_value.copyWith(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      skipIntro: null == skipIntro
          ? _value.skipIntro
          : skipIntro // ignore: cast_nullable_to_non_nullable
              as bool,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingDTOImplCopyWith<$Res>
    implements $AppSettingDTOCopyWith<$Res> {
  factory _$$AppSettingDTOImplCopyWith(
          _$AppSettingDTOImpl value, $Res Function(_$AppSettingDTOImpl) then) =
      __$$AppSettingDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int themeMode, int color, bool skipIntro, String? host});
}

/// @nodoc
class __$$AppSettingDTOImplCopyWithImpl<$Res>
    extends _$AppSettingDTOCopyWithImpl<$Res, _$AppSettingDTOImpl>
    implements _$$AppSettingDTOImplCopyWith<$Res> {
  __$$AppSettingDTOImplCopyWithImpl(
      _$AppSettingDTOImpl _value, $Res Function(_$AppSettingDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = null,
    Object? skipIntro = null,
    Object? host = freezed,
  }) {
    return _then(_$AppSettingDTOImpl(
      themeMode: null == themeMode
          ? _value.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as int,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as int,
      skipIntro: null == skipIntro
          ? _value.skipIntro
          : skipIntro // ignore: cast_nullable_to_non_nullable
              as bool,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingDTOImpl extends _AppSettingDTO {
  const _$AppSettingDTOImpl(
      {required this.themeMode,
      required this.color,
      this.skipIntro = false,
      this.host})
      : super._();

  factory _$AppSettingDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingDTOImplFromJson(json);

  @override
  final int themeMode;
  @override
  final int color;
  @override
  @JsonKey()
  final bool skipIntro;
  @override
  final String? host;

  /// Create a copy of AppSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingDTOImplCopyWith<_$AppSettingDTOImpl> get copyWith =>
      __$$AppSettingDTOImplCopyWithImpl<_$AppSettingDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingDTOImplToJson(
      this,
    );
  }
}

abstract class _AppSettingDTO extends AppSettingDTO {
  const factory _AppSettingDTO(
      {required final int themeMode,
      required final int color,
      final bool skipIntro,
      final String? host}) = _$AppSettingDTOImpl;
  const _AppSettingDTO._() : super._();

  factory _AppSettingDTO.fromJson(Map<String, dynamic> json) =
      _$AppSettingDTOImpl.fromJson;

  @override
  int get themeMode;
  @override
  int get color;
  @override
  bool get skipIntro;
  @override
  String? get host;

  /// Create a copy of AppSettingDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingDTOImplCopyWith<_$AppSettingDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
