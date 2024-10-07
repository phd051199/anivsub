// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'watch_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WatchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchInitial value) initial,
    required TResult Function(WatchLoading value) loading,
    required TResult Function(WatchLoaded value) loaded,
    required TResult Function(WatchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchInitial value)? initial,
    TResult? Function(WatchLoading value)? loading,
    TResult? Function(WatchLoaded value)? loaded,
    TResult? Function(WatchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchInitial value)? initial,
    TResult Function(WatchLoading value)? loading,
    TResult Function(WatchLoaded value)? loaded,
    TResult Function(WatchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WatchStateCopyWith<$Res> {
  factory $WatchStateCopyWith(
          WatchState value, $Res Function(WatchState) then) =
      _$WatchStateCopyWithImpl<$Res, WatchState>;
}

/// @nodoc
class _$WatchStateCopyWithImpl<$Res, $Val extends WatchState>
    implements $WatchStateCopyWith<$Res> {
  _$WatchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$WatchInitialImplCopyWith<$Res> {
  factory _$$WatchInitialImplCopyWith(
          _$WatchInitialImpl value, $Res Function(_$WatchInitialImpl) then) =
      __$$WatchInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchInitialImplCopyWithImpl<$Res>
    extends _$WatchStateCopyWithImpl<$Res, _$WatchInitialImpl>
    implements _$$WatchInitialImplCopyWith<$Res> {
  __$$WatchInitialImplCopyWithImpl(
      _$WatchInitialImpl _value, $Res Function(_$WatchInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchInitialImpl implements WatchInitial {
  const _$WatchInitialImpl();

  @override
  String toString() {
    return 'WatchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchInitial value) initial,
    required TResult Function(WatchLoading value) loading,
    required TResult Function(WatchLoaded value) loaded,
    required TResult Function(WatchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchInitial value)? initial,
    TResult? Function(WatchLoading value)? loading,
    TResult? Function(WatchLoaded value)? loaded,
    TResult? Function(WatchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchInitial value)? initial,
    TResult Function(WatchLoading value)? loading,
    TResult Function(WatchLoaded value)? loaded,
    TResult Function(WatchError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class WatchInitial implements WatchState {
  const factory WatchInitial() = _$WatchInitialImpl;
}

/// @nodoc
abstract class _$$WatchLoadingImplCopyWith<$Res> {
  factory _$$WatchLoadingImplCopyWith(
          _$WatchLoadingImpl value, $Res Function(_$WatchLoadingImpl) then) =
      __$$WatchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchLoadingImplCopyWithImpl<$Res>
    extends _$WatchStateCopyWithImpl<$Res, _$WatchLoadingImpl>
    implements _$$WatchLoadingImplCopyWith<$Res> {
  __$$WatchLoadingImplCopyWithImpl(
      _$WatchLoadingImpl _value, $Res Function(_$WatchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchLoadingImpl implements WatchLoading {
  const _$WatchLoadingImpl();

  @override
  String toString() {
    return 'WatchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchInitial value) initial,
    required TResult Function(WatchLoading value) loading,
    required TResult Function(WatchLoaded value) loaded,
    required TResult Function(WatchError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchInitial value)? initial,
    TResult? Function(WatchLoading value)? loading,
    TResult? Function(WatchLoaded value)? loaded,
    TResult? Function(WatchError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchInitial value)? initial,
    TResult Function(WatchLoading value)? loading,
    TResult Function(WatchLoaded value)? loaded,
    TResult Function(WatchError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class WatchLoading implements WatchState {
  const factory WatchLoading() = _$WatchLoadingImpl;
}

/// @nodoc
abstract class _$$WatchLoadedImplCopyWith<$Res> {
  factory _$$WatchLoadedImplCopyWith(
          _$WatchLoadedImpl value, $Res Function(_$WatchLoadedImpl) then) =
      __$$WatchLoadedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WatchLoadedImplCopyWithImpl<$Res>
    extends _$WatchStateCopyWithImpl<$Res, _$WatchLoadedImpl>
    implements _$$WatchLoadedImplCopyWith<$Res> {
  __$$WatchLoadedImplCopyWithImpl(
      _$WatchLoadedImpl _value, $Res Function(_$WatchLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$WatchLoadedImpl implements WatchLoaded {
  const _$WatchLoadedImpl();

  @override
  String toString() {
    return 'WatchState.loaded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$WatchLoadedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchInitial value) initial,
    required TResult Function(WatchLoading value) loading,
    required TResult Function(WatchLoaded value) loaded,
    required TResult Function(WatchError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchInitial value)? initial,
    TResult? Function(WatchLoading value)? loading,
    TResult? Function(WatchLoaded value)? loaded,
    TResult? Function(WatchError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchInitial value)? initial,
    TResult Function(WatchLoading value)? loading,
    TResult Function(WatchLoaded value)? loaded,
    TResult Function(WatchError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class WatchLoaded implements WatchState {
  const factory WatchLoaded() = _$WatchLoadedImpl;
}

/// @nodoc
abstract class _$$WatchErrorImplCopyWith<$Res> {
  factory _$$WatchErrorImplCopyWith(
          _$WatchErrorImpl value, $Res Function(_$WatchErrorImpl) then) =
      __$$WatchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WatchErrorImplCopyWithImpl<$Res>
    extends _$WatchStateCopyWithImpl<$Res, _$WatchErrorImpl>
    implements _$$WatchErrorImplCopyWith<$Res> {
  __$$WatchErrorImplCopyWithImpl(
      _$WatchErrorImpl _value, $Res Function(_$WatchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WatchErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WatchErrorImpl implements WatchError {
  const _$WatchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'WatchState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WatchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WatchErrorImplCopyWith<_$WatchErrorImpl> get copyWith =>
      __$$WatchErrorImplCopyWithImpl<_$WatchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(WatchInitial value) initial,
    required TResult Function(WatchLoading value) loading,
    required TResult Function(WatchLoaded value) loaded,
    required TResult Function(WatchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(WatchInitial value)? initial,
    TResult? Function(WatchLoading value)? loading,
    TResult? Function(WatchLoaded value)? loaded,
    TResult? Function(WatchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(WatchInitial value)? initial,
    TResult Function(WatchLoading value)? loading,
    TResult Function(WatchLoaded value)? loaded,
    TResult Function(WatchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class WatchError implements WatchState {
  const factory WatchError(final String message) = _$WatchErrorImpl;

  String get message;

  /// Create a copy of WatchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WatchErrorImplCopyWith<_$WatchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
