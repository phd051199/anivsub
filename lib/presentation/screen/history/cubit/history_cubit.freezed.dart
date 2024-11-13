// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HistoryState {
  UserSessionResponseEntity? get user => throw _privateConstructorUsedError;
  List<QueryHistoryEntity?>? get queryHistory =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        initial,
    required TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)
        loaded,
    required TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult? Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult? Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitial value)? initial,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HistoryStateCopyWith<HistoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
  @useResult
  $Res call(
      {UserSessionResponseEntity user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? queryHistory = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user!
          : user // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity,
      queryHistory: freezed == queryHistory
          ? _value.queryHistory
          : queryHistory // ignore: cast_nullable_to_non_nullable
              as List<QueryHistoryEntity?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HistoryInitialImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryInitialImplCopyWith(_$HistoryInitialImpl value,
          $Res Function(_$HistoryInitialImpl) then) =
      __$$HistoryInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSessionResponseEntity? user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$HistoryInitialImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryInitialImpl>
    implements _$$HistoryInitialImplCopyWith<$Res> {
  __$$HistoryInitialImplCopyWithImpl(
      _$HistoryInitialImpl _value, $Res Function(_$HistoryInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? queryHistory = freezed,
  }) {
    return _then(_$HistoryInitialImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
      queryHistory: freezed == queryHistory
          ? _value._queryHistory
          : queryHistory // ignore: cast_nullable_to_non_nullable
              as List<QueryHistoryEntity?>?,
    ));
  }
}

/// @nodoc

class _$HistoryInitialImpl implements HistoryInitial {
  const _$HistoryInitialImpl(
      {this.user, final List<QueryHistoryEntity?>? queryHistory})
      : _queryHistory = queryHistory;

  @override
  final UserSessionResponseEntity? user;
  final List<QueryHistoryEntity?>? _queryHistory;
  @override
  List<QueryHistoryEntity?>? get queryHistory {
    final value = _queryHistory;
    if (value == null) return null;
    if (_queryHistory is EqualUnmodifiableListView) return _queryHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.initial(user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryInitialImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryInitialImplCopyWith<_$HistoryInitialImpl> get copyWith =>
      __$$HistoryInitialImplCopyWithImpl<_$HistoryInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        initial,
    required TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)
        loaded,
    required TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        error,
  }) {
    return initial(user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult? Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult? Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
  }) {
    return initial?.call(user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(user, queryHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitial value)? initial,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HistoryInitial implements HistoryState {
  const factory HistoryInitial(
      {final UserSessionResponseEntity? user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$HistoryInitialImpl;

  @override
  UserSessionResponseEntity? get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryInitialImplCopyWith<_$HistoryInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryLoadedImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryLoadedImplCopyWith(
          _$HistoryLoadedImpl value, $Res Function(_$HistoryLoadedImpl) then) =
      __$$HistoryLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSessionResponseEntity user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$HistoryLoadedImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryLoadedImpl>
    implements _$$HistoryLoadedImplCopyWith<$Res> {
  __$$HistoryLoadedImplCopyWithImpl(
      _$HistoryLoadedImpl _value, $Res Function(_$HistoryLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? queryHistory = freezed,
  }) {
    return _then(_$HistoryLoadedImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity,
      queryHistory: freezed == queryHistory
          ? _value._queryHistory
          : queryHistory // ignore: cast_nullable_to_non_nullable
              as List<QueryHistoryEntity?>?,
    ));
  }
}

/// @nodoc

class _$HistoryLoadedImpl implements HistoryLoaded {
  const _$HistoryLoadedImpl(
      {required this.user, final List<QueryHistoryEntity?>? queryHistory})
      : _queryHistory = queryHistory;

  @override
  final UserSessionResponseEntity user;
  final List<QueryHistoryEntity?>? _queryHistory;
  @override
  List<QueryHistoryEntity?>? get queryHistory {
    final value = _queryHistory;
    if (value == null) return null;
    if (_queryHistory is EqualUnmodifiableListView) return _queryHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.loaded(user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryLoadedImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      __$$HistoryLoadedImplCopyWithImpl<_$HistoryLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        initial,
    required TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)
        loaded,
    required TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        error,
  }) {
    return loaded(user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult? Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult? Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
  }) {
    return loaded?.call(user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(user, queryHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitial value)? initial,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HistoryLoaded implements HistoryState {
  const factory HistoryLoaded(
      {required final UserSessionResponseEntity user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$HistoryLoadedImpl;

  @override
  UserSessionResponseEntity get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryLoadedImplCopyWith<_$HistoryLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HistoryErrorImplCopyWith<$Res>
    implements $HistoryStateCopyWith<$Res> {
  factory _$$HistoryErrorImplCopyWith(
          _$HistoryErrorImpl value, $Res Function(_$HistoryErrorImpl) then) =
      __$$HistoryErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      UserSessionResponseEntity? user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$HistoryErrorImplCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$HistoryErrorImpl>
    implements _$$HistoryErrorImplCopyWith<$Res> {
  __$$HistoryErrorImplCopyWithImpl(
      _$HistoryErrorImpl _value, $Res Function(_$HistoryErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = freezed,
    Object? queryHistory = freezed,
  }) {
    return _then(_$HistoryErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
      queryHistory: freezed == queryHistory
          ? _value._queryHistory
          : queryHistory // ignore: cast_nullable_to_non_nullable
              as List<QueryHistoryEntity?>?,
    ));
  }
}

/// @nodoc

class _$HistoryErrorImpl implements HistoryError {
  const _$HistoryErrorImpl(
      {required this.message,
      this.user,
      final List<QueryHistoryEntity?>? queryHistory})
      : _queryHistory = queryHistory;

  @override
  final String message;
  @override
  final UserSessionResponseEntity? user;
  final List<QueryHistoryEntity?>? _queryHistory;
  @override
  List<QueryHistoryEntity?>? get queryHistory {
    final value = _queryHistory;
    if (value == null) return null;
    if (_queryHistory is EqualUnmodifiableListView) return _queryHistory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HistoryState.error(message: $message, user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HistoryErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, user,
      const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      __$$HistoryErrorImplCopyWithImpl<_$HistoryErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        initial,
    required TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)
        loaded,
    required TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)
        error,
  }) {
    return error(message, user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult? Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult? Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
  }) {
    return error?.call(message, user, queryHistory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        initial,
    TResult Function(UserSessionResponseEntity user,
            List<QueryHistoryEntity?>? queryHistory)?
        loaded,
    TResult Function(String message, UserSessionResponseEntity? user,
            List<QueryHistoryEntity?>? queryHistory)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, user, queryHistory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HistoryInitial value) initial,
    required TResult Function(HistoryLoaded value) loaded,
    required TResult Function(HistoryError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HistoryInitial value)? initial,
    TResult? Function(HistoryLoaded value)? loaded,
    TResult? Function(HistoryError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HistoryInitial value)? initial,
    TResult Function(HistoryLoaded value)? loaded,
    TResult Function(HistoryError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HistoryError implements HistoryState {
  const factory HistoryError(
      {required final String message,
      final UserSessionResponseEntity? user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$HistoryErrorImpl;

  String get message;
  @override
  UserSessionResponseEntity? get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of HistoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HistoryErrorImplCopyWith<_$HistoryErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
