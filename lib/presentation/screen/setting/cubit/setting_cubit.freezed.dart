// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingState {
  bool get isEditingHost => throw _privateConstructorUsedError;
  bool get isHostUpdated => throw _privateConstructorUsedError;
  String? get host => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        initial,
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingInitial value) initial,
    required TResult Function(SettingChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingInitial value)? initial,
    TResult? Function(SettingChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingInitial value)? initial,
    TResult Function(SettingChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingStateCopyWith<SettingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingStateCopyWith<$Res> {
  factory $SettingStateCopyWith(
          SettingState value, $Res Function(SettingState) then) =
      _$SettingStateCopyWithImpl<$Res, SettingState>;
  @useResult
  $Res call({bool isEditingHost, bool isHostUpdated, String? host});
}

/// @nodoc
class _$SettingStateCopyWithImpl<$Res, $Val extends SettingState>
    implements $SettingStateCopyWith<$Res> {
  _$SettingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditingHost = null,
    Object? isHostUpdated = null,
    Object? host = freezed,
  }) {
    return _then(_value.copyWith(
      isEditingHost: null == isEditingHost
          ? _value.isEditingHost
          : isEditingHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isHostUpdated: null == isHostUpdated
          ? _value.isHostUpdated
          : isHostUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingInitialImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingInitialImplCopyWith(_$SettingInitialImpl value,
          $Res Function(_$SettingInitialImpl) then) =
      __$$SettingInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEditingHost, bool isHostUpdated, String? host});
}

/// @nodoc
class __$$SettingInitialImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingInitialImpl>
    implements _$$SettingInitialImplCopyWith<$Res> {
  __$$SettingInitialImplCopyWithImpl(
      _$SettingInitialImpl _value, $Res Function(_$SettingInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditingHost = null,
    Object? isHostUpdated = null,
    Object? host = freezed,
  }) {
    return _then(_$SettingInitialImpl(
      isEditingHost: null == isEditingHost
          ? _value.isEditingHost
          : isEditingHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isHostUpdated: null == isHostUpdated
          ? _value.isHostUpdated
          : isHostUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SettingInitialImpl implements SettingInitial {
  const _$SettingInitialImpl(
      {this.isEditingHost = false, this.isHostUpdated = false, this.host});

  @override
  @JsonKey()
  final bool isEditingHost;
  @override
  @JsonKey()
  final bool isHostUpdated;
  @override
  final String? host;

  @override
  String toString() {
    return 'SettingState.initial(isEditingHost: $isEditingHost, isHostUpdated: $isHostUpdated, host: $host)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingInitialImpl &&
            (identical(other.isEditingHost, isEditingHost) ||
                other.isEditingHost == isEditingHost) &&
            (identical(other.isHostUpdated, isHostUpdated) ||
                other.isHostUpdated == isHostUpdated) &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isEditingHost, isHostUpdated, host);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingInitialImplCopyWith<_$SettingInitialImpl> get copyWith =>
      __$$SettingInitialImplCopyWithImpl<_$SettingInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        initial,
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        changed,
  }) {
    return initial(isEditingHost, isHostUpdated, host);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
  }) {
    return initial?.call(isEditingHost, isHostUpdated, host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isEditingHost, isHostUpdated, host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingInitial value) initial,
    required TResult Function(SettingChanged value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingInitial value)? initial,
    TResult? Function(SettingChanged value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingInitial value)? initial,
    TResult Function(SettingChanged value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingInitial implements SettingState {
  const factory SettingInitial(
      {final bool isEditingHost,
      final bool isHostUpdated,
      final String? host}) = _$SettingInitialImpl;

  @override
  bool get isEditingHost;
  @override
  bool get isHostUpdated;
  @override
  String? get host;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingInitialImplCopyWith<_$SettingInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingChangedImplCopyWith<$Res>
    implements $SettingStateCopyWith<$Res> {
  factory _$$SettingChangedImplCopyWith(_$SettingChangedImpl value,
          $Res Function(_$SettingChangedImpl) then) =
      __$$SettingChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isEditingHost, bool isHostUpdated, String? host});
}

/// @nodoc
class __$$SettingChangedImplCopyWithImpl<$Res>
    extends _$SettingStateCopyWithImpl<$Res, _$SettingChangedImpl>
    implements _$$SettingChangedImplCopyWith<$Res> {
  __$$SettingChangedImplCopyWithImpl(
      _$SettingChangedImpl _value, $Res Function(_$SettingChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isEditingHost = null,
    Object? isHostUpdated = null,
    Object? host = freezed,
  }) {
    return _then(_$SettingChangedImpl(
      isEditingHost: null == isEditingHost
          ? _value.isEditingHost
          : isEditingHost // ignore: cast_nullable_to_non_nullable
              as bool,
      isHostUpdated: null == isHostUpdated
          ? _value.isHostUpdated
          : isHostUpdated // ignore: cast_nullable_to_non_nullable
              as bool,
      host: freezed == host
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SettingChangedImpl implements SettingChanged {
  const _$SettingChangedImpl(
      {this.isEditingHost = false, this.isHostUpdated = false, this.host});

  @override
  @JsonKey()
  final bool isEditingHost;
  @override
  @JsonKey()
  final bool isHostUpdated;
  @override
  final String? host;

  @override
  String toString() {
    return 'SettingState.changed(isEditingHost: $isEditingHost, isHostUpdated: $isHostUpdated, host: $host)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingChangedImpl &&
            (identical(other.isEditingHost, isEditingHost) ||
                other.isEditingHost == isEditingHost) &&
            (identical(other.isHostUpdated, isHostUpdated) ||
                other.isHostUpdated == isHostUpdated) &&
            (identical(other.host, host) || other.host == host));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isEditingHost, isHostUpdated, host);

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingChangedImplCopyWith<_$SettingChangedImpl> get copyWith =>
      __$$SettingChangedImplCopyWithImpl<_$SettingChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        initial,
    required TResult Function(
            bool isEditingHost, bool isHostUpdated, String? host)
        changed,
  }) {
    return changed(isEditingHost, isHostUpdated, host);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult? Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
  }) {
    return changed?.call(isEditingHost, isHostUpdated, host);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        initial,
    TResult Function(bool isEditingHost, bool isHostUpdated, String? host)?
        changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(isEditingHost, isHostUpdated, host);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingInitial value) initial,
    required TResult Function(SettingChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingInitial value)? initial,
    TResult? Function(SettingChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingInitial value)? initial,
    TResult Function(SettingChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class SettingChanged implements SettingState {
  const factory SettingChanged(
      {final bool isEditingHost,
      final bool isHostUpdated,
      final String? host}) = _$SettingChangedImpl;

  @override
  bool get isEditingHost;
  @override
  bool get isHostUpdated;
  @override
  String? get host;

  /// Create a copy of SettingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingChangedImplCopyWith<_$SettingChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
