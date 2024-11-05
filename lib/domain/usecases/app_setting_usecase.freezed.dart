// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_setting_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppSettingUseCaseInput {
  AppSettingEntity? get appSetting => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingUseCaseInputCopyWith<AppSettingUseCaseInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingUseCaseInputCopyWith<$Res> {
  factory $AppSettingUseCaseInputCopyWith(AppSettingUseCaseInput value,
          $Res Function(AppSettingUseCaseInput) then) =
      _$AppSettingUseCaseInputCopyWithImpl<$Res, AppSettingUseCaseInput>;
  @useResult
  $Res call({AppSettingEntity? appSetting});

  $AppSettingEntityCopyWith<$Res>? get appSetting;
}

/// @nodoc
class _$AppSettingUseCaseInputCopyWithImpl<$Res,
        $Val extends AppSettingUseCaseInput>
    implements $AppSettingUseCaseInputCopyWith<$Res> {
  _$AppSettingUseCaseInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = freezed,
  }) {
    return _then(_value.copyWith(
      appSetting: freezed == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSettingEntity?,
    ) as $Val);
  }

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingEntityCopyWith<$Res>? get appSetting {
    if (_value.appSetting == null) {
      return null;
    }

    return $AppSettingEntityCopyWith<$Res>(_value.appSetting!, (value) {
      return _then(_value.copyWith(appSetting: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingUseCaseInputImplCopyWith<$Res>
    implements $AppSettingUseCaseInputCopyWith<$Res> {
  factory _$$AppSettingUseCaseInputImplCopyWith(
          _$AppSettingUseCaseInputImpl value,
          $Res Function(_$AppSettingUseCaseInputImpl) then) =
      __$$AppSettingUseCaseInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettingEntity? appSetting});

  @override
  $AppSettingEntityCopyWith<$Res>? get appSetting;
}

/// @nodoc
class __$$AppSettingUseCaseInputImplCopyWithImpl<$Res>
    extends _$AppSettingUseCaseInputCopyWithImpl<$Res,
        _$AppSettingUseCaseInputImpl>
    implements _$$AppSettingUseCaseInputImplCopyWith<$Res> {
  __$$AppSettingUseCaseInputImplCopyWithImpl(
      _$AppSettingUseCaseInputImpl _value,
      $Res Function(_$AppSettingUseCaseInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appSetting = freezed,
  }) {
    return _then(_$AppSettingUseCaseInputImpl(
      appSetting: freezed == appSetting
          ? _value.appSetting
          : appSetting // ignore: cast_nullable_to_non_nullable
              as AppSettingEntity?,
    ));
  }
}

/// @nodoc

class _$AppSettingUseCaseInputImpl implements _AppSettingUseCaseInput {
  const _$AppSettingUseCaseInputImpl({this.appSetting});

  @override
  final AppSettingEntity? appSetting;

  @override
  String toString() {
    return 'AppSettingUseCaseInput(appSetting: $appSetting)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingUseCaseInputImpl &&
            (identical(other.appSetting, appSetting) ||
                other.appSetting == appSetting));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appSetting);

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingUseCaseInputImplCopyWith<_$AppSettingUseCaseInputImpl>
      get copyWith => __$$AppSettingUseCaseInputImplCopyWithImpl<
          _$AppSettingUseCaseInputImpl>(this, _$identity);
}

abstract class _AppSettingUseCaseInput implements AppSettingUseCaseInput {
  const factory _AppSettingUseCaseInput({final AppSettingEntity? appSetting}) =
      _$AppSettingUseCaseInputImpl;

  @override
  AppSettingEntity? get appSetting;

  /// Create a copy of AppSettingUseCaseInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingUseCaseInputImplCopyWith<_$AppSettingUseCaseInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppSettingUseCaseOutput {
  AppSettingEntity? get result => throw _privateConstructorUsedError;

  /// Create a copy of AppSettingUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AppSettingUseCaseOutputCopyWith<AppSettingUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingUseCaseOutputCopyWith<$Res> {
  factory $AppSettingUseCaseOutputCopyWith(AppSettingUseCaseOutput value,
          $Res Function(AppSettingUseCaseOutput) then) =
      _$AppSettingUseCaseOutputCopyWithImpl<$Res, AppSettingUseCaseOutput>;
  @useResult
  $Res call({AppSettingEntity? result});

  $AppSettingEntityCopyWith<$Res>? get result;
}

/// @nodoc
class _$AppSettingUseCaseOutputCopyWithImpl<$Res,
        $Val extends AppSettingUseCaseOutput>
    implements $AppSettingUseCaseOutputCopyWith<$Res> {
  _$AppSettingUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AppSettingUseCaseOutput
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
              as AppSettingEntity?,
    ) as $Val);
  }

  /// Create a copy of AppSettingUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AppSettingEntityCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $AppSettingEntityCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AppSettingUseCaseOutputImplCopyWith<$Res>
    implements $AppSettingUseCaseOutputCopyWith<$Res> {
  factory _$$AppSettingUseCaseOutputImplCopyWith(
          _$AppSettingUseCaseOutputImpl value,
          $Res Function(_$AppSettingUseCaseOutputImpl) then) =
      __$$AppSettingUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AppSettingEntity? result});

  @override
  $AppSettingEntityCopyWith<$Res>? get result;
}

/// @nodoc
class __$$AppSettingUseCaseOutputImplCopyWithImpl<$Res>
    extends _$AppSettingUseCaseOutputCopyWithImpl<$Res,
        _$AppSettingUseCaseOutputImpl>
    implements _$$AppSettingUseCaseOutputImplCopyWith<$Res> {
  __$$AppSettingUseCaseOutputImplCopyWithImpl(
      _$AppSettingUseCaseOutputImpl _value,
      $Res Function(_$AppSettingUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AppSettingUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$AppSettingUseCaseOutputImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as AppSettingEntity?,
    ));
  }
}

/// @nodoc

class _$AppSettingUseCaseOutputImpl implements _AppSettingUseCaseOutput {
  const _$AppSettingUseCaseOutputImpl({this.result});

  @override
  final AppSettingEntity? result;

  @override
  String toString() {
    return 'AppSettingUseCaseOutput(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppSettingUseCaseOutputImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  /// Create a copy of AppSettingUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AppSettingUseCaseOutputImplCopyWith<_$AppSettingUseCaseOutputImpl>
      get copyWith => __$$AppSettingUseCaseOutputImplCopyWithImpl<
          _$AppSettingUseCaseOutputImpl>(this, _$identity);
}

abstract class _AppSettingUseCaseOutput implements AppSettingUseCaseOutput {
  const factory _AppSettingUseCaseOutput({final AppSettingEntity? result}) =
      _$AppSettingUseCaseOutputImpl;

  @override
  AppSettingEntity? get result;

  /// Create a copy of AppSettingUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AppSettingUseCaseOutputImplCopyWith<_$AppSettingUseCaseOutputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
