// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_settings_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingsUseCaseInput {
  AppSettingsEntity? get appSettings => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsUseCaseInputCopyWith<AppSettingsUseCaseInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsUseCaseInputCopyWith<$Res> {
  factory $AppSettingsUseCaseInputCopyWith(AppSettingsUseCaseInput value,
          $Res Function(AppSettingsUseCaseInput) then) =
      _$AppSettingsUseCaseInputCopyWithImpl<$Res, AppSettingsUseCaseInput>;
  @useResult
  $Res call({AppSettingsEntity? appSettings});

  $AppSettingsEntityCopyWith<$Res>? get appSettings;
}

/// @nodoc
class _$AppSettingsUseCaseInputCopyWithImpl<$Res,
        $Val extends AppSettingsUseCaseInput>
    implements $AppSettingsUseCaseInputCopyWith<$Res> {
  _$AppSettingsUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = freezed,
  }) {
    return _then(_value.copyWith(
      appSettings: freezed == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettingsEntity?,
    ) as $Val);
  }

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsEntityCopyWith<$Res>? get appSettings {
    if (_value.appSettings == null) {
      return null;
    }

    return $AppSettingsEntityCopyWith<$Res>(_value.appSettings!, (value) {
      return _then(_value.copyWith(appSettings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingsUseCaseInputImplCopyWith<$Res>
    implements $AppSettingsUseCaseInputCopyWith<$Res> {
  factory _$$AppSettingsUseCaseInputImplCopyWith(
          _$AppSettingsUseCaseInputImpl value,
          $Res Function(_$AppSettingsUseCaseInputImpl) then) =
      __$$AppSettingsUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettingsEntity? appSettings});

  @override
  $AppSettingsEntityCopyWith<$Res>? get appSettings;
}

/// @nodoc
class __$$AppSettingsUseCaseInputImplCopyWithImpl<$Res>
    extends _$AppSettingsUseCaseInputCopyWithImpl<$Res,
        _$AppSettingsUseCaseInputImpl>
    implements _$$AppSettingsUseCaseInputImplCopyWith<$Res> {
  __$$AppSettingsUseCaseInputImplCopyWithImpl(
      _$AppSettingsUseCaseInputImpl _value,
      $Res Function(_$AppSettingsUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSettings = freezed,
  }) {
    return _then(_$AppSettingsUseCaseInputImpl(
      appSettings: freezed == appSettings
          ? _value.appSettings
          : appSettings // ignore: cast_nullable_to_non_nullable
              as AppSettingsEntity?,
    ));
  }
}

/// @nodoc

class _$AppSettingsUseCaseInputImpl implements _AppSettingsUseCaseInput {
  const _$AppSettingsUseCaseInputImpl({this.appSettings});

  @override
  final AppSettingsEntity? appSettings;

  @override
  String toString() {
    return 'AppSettingsUseCaseInput(appSettings: $appSettings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsUseCaseInputImpl &&
            (identical(other.appSettings, appSettings) ||
                other.appSettings == appSettings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSettings);

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsUseCaseInputImplCopyWith<_$AppSettingsUseCaseInputImpl>
      get copyWith => __$$AppSettingsUseCaseInputImplCopyWithImpl<
          _$AppSettingsUseCaseInputImpl>(this, _$identity);
}

abstract class _AppSettingsUseCaseInput implements AppSettingsUseCaseInput {
  const factory _AppSettingsUseCaseInput(
      {final AppSettingsEntity? appSettings}) = _$AppSettingsUseCaseInputImpl;

  @override
  AppSettingsEntity? get appSettings;

  /// Create a copy of AppSettingsUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsUseCaseInputImplCopyWith<_$AppSettingsUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppSettingsUseCaseOutput {
  AppSettingsEntity? get result => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingsUseCaseOutputCopyWith<AppSettingsUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsUseCaseOutputCopyWith<$Res> {
  factory $AppSettingsUseCaseOutputCopyWith(AppSettingsUseCaseOutput value,
          $Res Function(AppSettingsUseCaseOutput) then) =
      _$AppSettingsUseCaseOutputCopyWithImpl<$Res, AppSettingsUseCaseOutput>;
  @useResult
  $Res call({AppSettingsEntity? result});

  $AppSettingsEntityCopyWith<$Res>? get result;
}

/// @nodoc
class _$AppSettingsUseCaseOutputCopyWithImpl<$Res,
        $Val extends AppSettingsUseCaseOutput>
    implements $AppSettingsUseCaseOutputCopyWith<$Res> {
  _$AppSettingsUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AppSettingsEntity?,
    ) as $Val);
  }

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingsEntityCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AppSettingsEntityCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingsUseCaseOutputImplCopyWith<$Res>
    implements $AppSettingsUseCaseOutputCopyWith<$Res> {
  factory _$$AppSettingsUseCaseOutputImplCopyWith(
          _$AppSettingsUseCaseOutputImpl value,
          $Res Function(_$AppSettingsUseCaseOutputImpl) then) =
      __$$AppSettingsUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettingsEntity? result});

  @override
  $AppSettingsEntityCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AppSettingsUseCaseOutputImplCopyWithImpl<$Res>
    extends _$AppSettingsUseCaseOutputCopyWithImpl<$Res,
        _$AppSettingsUseCaseOutputImpl>
    implements _$$AppSettingsUseCaseOutputImplCopyWith<$Res> {
  __$$AppSettingsUseCaseOutputImplCopyWithImpl(
      _$AppSettingsUseCaseOutputImpl _value,
      $Res Function(_$AppSettingsUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$AppSettingsUseCaseOutputImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AppSettingsEntity?,
    ));
  }
}

/// @nodoc

class _$AppSettingsUseCaseOutputImpl implements _AppSettingsUseCaseOutput {
  const _$AppSettingsUseCaseOutputImpl({this.result});

  @override
  final AppSettingsEntity? result;

  @override
  String toString() {
    return 'AppSettingsUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingsUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingsUseCaseOutputImplCopyWith<_$AppSettingsUseCaseOutputImpl>
      get copyWith => __$$AppSettingsUseCaseOutputImplCopyWithImpl<
          _$AppSettingsUseCaseOutputImpl>(this, _$identity);
}

abstract class _AppSettingsUseCaseOutput implements AppSettingsUseCaseOutput {
  const factory _AppSettingsUseCaseOutput({final AppSettingsEntity? result}) =
      _$AppSettingsUseCaseOutputImpl;

  @override
  AppSettingsEntity? get result;

  /// Create a copy of AppSettingsUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingsUseCaseOutputImplCopyWith<_$AppSettingsUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
