// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AppSettingsDTO _$AppSettingsDTOFromJson(Map<String, dynamic> json) {
  return _AppSettingsDTO.fromJson(json);
}

/// @nodoc
mixin _$AppSettingsDTO {
  int get themeMode => throw _privateConstructorUsedError;
  int get color => throw _privateConstructorUsedError;
  bool get skipIntro => throw _privateConstructorUsedError;

  /// Serializes this AppSettingsDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsDTOCopyWith<AppSettingsDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsDTOCopyWith<$Res> {
  factory $AppSettingsDTOCopyWith(
          AppSettingsDTO value, $Res Function(AppSettingsDTO) then) =
      _$AppSettingsDTOCopyWithImpl<$Res, AppSettingsDTO>;
  @useResult
  $Res call({int themeMode, int color, bool skipIntro});
}

/// @nodoc
class _$AppSettingsDTOCopyWithImpl<$Res, $Val extends AppSettingsDTO>
    implements $AppSettingsDTOCopyWith<$Res> {
  _$AppSettingsDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = null,
    Object? skipIntro = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppSettingsDTOImplCopyWith<$Res>
    implements $AppSettingsDTOCopyWith<$Res> {
  factory _$$AppSettingsDTOImplCopyWith(_$AppSettingsDTOImpl value,
          $Res Function(_$AppSettingsDTOImpl) then) =
      __$$AppSettingsDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int themeMode, int color, bool skipIntro});
}

/// @nodoc
class __$$AppSettingsDTOImplCopyWithImpl<$Res>
    extends _$AppSettingsDTOCopyWithImpl<$Res, _$AppSettingsDTOImpl>
    implements _$$AppSettingsDTOImplCopyWith<$Res> {
  __$$AppSettingsDTOImplCopyWithImpl(
      _$AppSettingsDTOImpl _value, $Res Function(_$AppSettingsDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? themeMode = null,
    Object? color = null,
    Object? skipIntro = null,
  }) {
    return _then(_$AppSettingsDTOImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AppSettingsDTOImpl extends _AppSettingsDTO {
  const _$AppSettingsDTOImpl(
      {required this.themeMode, required this.color, this.skipIntro = false})
      : super._();

  factory _$AppSettingsDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$AppSettingsDTOImplFromJson(json);

  @override
  final int themeMode;
  @override
  final int color;
  @override
  @JsonKey()
  final bool skipIntro;

  /// Create a copy of AppSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsDTOImplCopyWith<_$AppSettingsDTOImpl> get copyWith =>
      __$$AppSettingsDTOImplCopyWithImpl<_$AppSettingsDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AppSettingsDTOImplToJson(
      this,
    );
  }
}

abstract class _AppSettingsDTO extends AppSettingsDTO {
  const factory _AppSettingsDTO(
      {required final int themeMode,
      required final int color,
      final bool skipIntro}) = _$AppSettingsDTOImpl;
  const _AppSettingsDTO._() : super._();

  factory _AppSettingsDTO.fromJson(Map<String, dynamic> json) =
      _$AppSettingsDTOImpl.fromJson;

  @override
  int get themeMode;
  @override
  int get color;
  @override
  bool get skipIntro;

  /// Create a copy of AppSettingsDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsDTOImplCopyWith<_$AppSettingsDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
