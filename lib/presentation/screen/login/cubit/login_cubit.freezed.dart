// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  bool get isPasswordObscured => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordObscured) initial,
    required TResult Function(bool isPasswordObscured) loaded,
    required TResult Function(bool isPasswordObscured) loading,
    required TResult Function(bool isPasswordObscured, String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordObscured)? initial,
    TResult? Function(bool isPasswordObscured)? loaded,
    TResult? Function(bool isPasswordObscured)? loading,
    TResult? Function(bool isPasswordObscured, String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordObscured)? initial,
    TResult Function(bool isPasswordObscured)? loaded,
    TResult Function(bool isPasswordObscured)? loading,
    TResult Function(bool isPasswordObscured, String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoaded value) loaded,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoaded value)? loaded,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoaded value)? loaded,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginStateCopyWith<LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
  @useResult
  $Res call({bool isPasswordObscured});
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
  }) {
    return _then(_value.copyWith(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginInitialImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginInitialImplCopyWith(
          _$LoginInitialImpl value, $Res Function(_$LoginInitialImpl) then) =
      __$$LoginInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPasswordObscured});
}

/// @nodoc
class __$$LoginInitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginInitialImpl>
    implements _$$LoginInitialImplCopyWith<$Res> {
  __$$LoginInitialImplCopyWithImpl(
      _$LoginInitialImpl _value, $Res Function(_$LoginInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
  }) {
    return _then(_$LoginInitialImpl(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginInitialImpl implements LoginInitial {
  const _$LoginInitialImpl({required this.isPasswordObscured});

  @override
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'LoginState.initial(isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInitialImpl &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordObscured);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInitialImplCopyWith<_$LoginInitialImpl> get copyWith =>
      __$$LoginInitialImplCopyWithImpl<_$LoginInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordObscured) initial,
    required TResult Function(bool isPasswordObscured) loaded,
    required TResult Function(bool isPasswordObscured) loading,
    required TResult Function(bool isPasswordObscured, String message) error,
  }) {
    return initial(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordObscured)? initial,
    TResult? Function(bool isPasswordObscured)? loaded,
    TResult? Function(bool isPasswordObscured)? loading,
    TResult? Function(bool isPasswordObscured, String message)? error,
  }) {
    return initial?.call(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordObscured)? initial,
    TResult Function(bool isPasswordObscured)? loaded,
    TResult Function(bool isPasswordObscured)? loading,
    TResult Function(bool isPasswordObscured, String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isPasswordObscured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoaded value) loaded,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoaded value)? loaded,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoaded value)? loaded,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LoginInitial implements LoginState {
  const factory LoginInitial({required final bool isPasswordObscured}) =
      _$LoginInitialImpl;

  @override
  bool get isPasswordObscured;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginInitialImplCopyWith<_$LoginInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadedImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginLoadedImplCopyWith(
          _$LoginLoadedImpl value, $Res Function(_$LoginLoadedImpl) then) =
      __$$LoginLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPasswordObscured});
}

/// @nodoc
class __$$LoginLoadedImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadedImpl>
    implements _$$LoginLoadedImplCopyWith<$Res> {
  __$$LoginLoadedImplCopyWithImpl(
      _$LoginLoadedImpl _value, $Res Function(_$LoginLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
  }) {
    return _then(_$LoginLoadedImpl(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginLoadedImpl implements LoginLoaded {
  const _$LoginLoadedImpl({required this.isPasswordObscured});

  @override
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'LoginState.loaded(isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginLoadedImpl &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordObscured);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginLoadedImplCopyWith<_$LoginLoadedImpl> get copyWith =>
      __$$LoginLoadedImplCopyWithImpl<_$LoginLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordObscured) initial,
    required TResult Function(bool isPasswordObscured) loaded,
    required TResult Function(bool isPasswordObscured) loading,
    required TResult Function(bool isPasswordObscured, String message) error,
  }) {
    return loaded(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordObscured)? initial,
    TResult? Function(bool isPasswordObscured)? loaded,
    TResult? Function(bool isPasswordObscured)? loading,
    TResult? Function(bool isPasswordObscured, String message)? error,
  }) {
    return loaded?.call(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordObscured)? initial,
    TResult Function(bool isPasswordObscured)? loaded,
    TResult Function(bool isPasswordObscured)? loading,
    TResult Function(bool isPasswordObscured, String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isPasswordObscured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoaded value) loaded,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoaded value)? loaded,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoaded value)? loaded,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoginLoaded implements LoginState {
  const factory LoginLoaded({required final bool isPasswordObscured}) =
      _$LoginLoadedImpl;

  @override
  bool get isPasswordObscured;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginLoadedImplCopyWith<_$LoginLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPasswordObscured});
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
  }) {
    return _then(_$LoginLoadingImpl(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl({required this.isPasswordObscured});

  @override
  final bool isPasswordObscured;

  @override
  String toString() {
    return 'LoginState.loading(isPasswordObscured: $isPasswordObscured)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginLoadingImpl &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordObscured);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginLoadingImplCopyWith<_$LoginLoadingImpl> get copyWith =>
      __$$LoginLoadingImplCopyWithImpl<_$LoginLoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordObscured) initial,
    required TResult Function(bool isPasswordObscured) loaded,
    required TResult Function(bool isPasswordObscured) loading,
    required TResult Function(bool isPasswordObscured, String message) error,
  }) {
    return loading(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordObscured)? initial,
    TResult? Function(bool isPasswordObscured)? loaded,
    TResult? Function(bool isPasswordObscured)? loading,
    TResult? Function(bool isPasswordObscured, String message)? error,
  }) {
    return loading?.call(isPasswordObscured);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordObscured)? initial,
    TResult Function(bool isPasswordObscured)? loaded,
    TResult Function(bool isPasswordObscured)? loading,
    TResult Function(bool isPasswordObscured, String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(isPasswordObscured);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoaded value) loaded,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoaded value)? loaded,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoaded value)? loaded,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading({required final bool isPasswordObscured}) =
      _$LoginLoadingImpl;

  @override
  bool get isPasswordObscured;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginLoadingImplCopyWith<_$LoginLoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res>
    implements $LoginStateCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPasswordObscured, String message});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPasswordObscured = null,
    Object? message = null,
  }) {
    return _then(_$LoginErrorImpl(
      isPasswordObscured: null == isPasswordObscured
          ? _value.isPasswordObscured
          : isPasswordObscured // ignore: cast_nullable_to_non_nullable
              as bool,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(
      {required this.isPasswordObscured, required this.message});

  @override
  final bool isPasswordObscured;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginState.error(isPasswordObscured: $isPasswordObscured, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.isPasswordObscured, isPasswordObscured) ||
                other.isPasswordObscured == isPasswordObscured) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPasswordObscured, message);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isPasswordObscured) initial,
    required TResult Function(bool isPasswordObscured) loaded,
    required TResult Function(bool isPasswordObscured) loading,
    required TResult Function(bool isPasswordObscured, String message) error,
  }) {
    return error(isPasswordObscured, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isPasswordObscured)? initial,
    TResult? Function(bool isPasswordObscured)? loaded,
    TResult? Function(bool isPasswordObscured)? loading,
    TResult? Function(bool isPasswordObscured, String message)? error,
  }) {
    return error?.call(isPasswordObscured, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isPasswordObscured)? initial,
    TResult Function(bool isPasswordObscured)? loaded,
    TResult Function(bool isPasswordObscured)? loading,
    TResult Function(bool isPasswordObscured, String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(isPasswordObscured, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginInitial value) initial,
    required TResult Function(LoginLoaded value) loaded,
    required TResult Function(LoginLoading value) loading,
    required TResult Function(LoginError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginInitial value)? initial,
    TResult? Function(LoginLoaded value)? loaded,
    TResult? Function(LoginLoading value)? loading,
    TResult? Function(LoginError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginInitial value)? initial,
    TResult Function(LoginLoaded value)? loaded,
    TResult Function(LoginLoading value)? loading,
    TResult Function(LoginError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError(
      {required final bool isPasswordObscured,
      required final String message}) = _$LoginErrorImpl;

  @override
  bool get isPasswordObscured;
  String get message;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
