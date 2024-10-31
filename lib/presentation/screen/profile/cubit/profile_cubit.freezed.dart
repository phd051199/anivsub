// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProfileState {
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
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProfileStateCopyWith<ProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStateCopyWith<$Res> {
  factory $ProfileStateCopyWith(
          ProfileState value, $Res Function(ProfileState) then) =
      _$ProfileStateCopyWithImpl<$Res, ProfileState>;
  @useResult
  $Res call(
      {UserSessionResponseEntity user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class _$ProfileStateCopyWithImpl<$Res, $Val extends ProfileState>
    implements $ProfileStateCopyWith<$Res> {
  _$ProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProfileState
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
abstract class _$$ProfileInitialImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileInitialImplCopyWith(_$ProfileInitialImpl value,
          $Res Function(_$ProfileInitialImpl) then) =
      __$$ProfileInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSessionResponseEntity? user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$ProfileInitialImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileInitialImpl>
    implements _$$ProfileInitialImplCopyWith<$Res> {
  __$$ProfileInitialImplCopyWithImpl(
      _$ProfileInitialImpl _value, $Res Function(_$ProfileInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? queryHistory = freezed,
  }) {
    return _then(_$ProfileInitialImpl(
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

class _$ProfileInitialImpl implements ProfileInitial {
  const _$ProfileInitialImpl(
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
    return 'ProfileState.initial(user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileInitialImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileInitialImplCopyWith<_$ProfileInitialImpl> get copyWith =>
      __$$ProfileInitialImplCopyWithImpl<_$ProfileInitialImpl>(
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
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ProfileInitial implements ProfileState {
  const factory ProfileInitial(
      {final UserSessionResponseEntity? user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$ProfileInitialImpl;

  @override
  UserSessionResponseEntity? get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileInitialImplCopyWith<_$ProfileInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileLoadedImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileLoadedImplCopyWith(
          _$ProfileLoadedImpl value, $Res Function(_$ProfileLoadedImpl) then) =
      __$$ProfileLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSessionResponseEntity user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$ProfileLoadedImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileLoadedImpl>
    implements _$$ProfileLoadedImplCopyWith<$Res> {
  __$$ProfileLoadedImplCopyWithImpl(
      _$ProfileLoadedImpl _value, $Res Function(_$ProfileLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? queryHistory = freezed,
  }) {
    return _then(_$ProfileLoadedImpl(
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

class _$ProfileLoadedImpl implements ProfileLoaded {
  const _$ProfileLoadedImpl(
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
    return 'ProfileState.loaded(user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileLoadedImpl &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, user, const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      __$$ProfileLoadedImplCopyWithImpl<_$ProfileLoadedImpl>(this, _$identity);

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
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ProfileLoaded implements ProfileState {
  const factory ProfileLoaded(
      {required final UserSessionResponseEntity user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$ProfileLoadedImpl;

  @override
  UserSessionResponseEntity get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileLoadedImplCopyWith<_$ProfileLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ProfileErrorImplCopyWith<$Res>
    implements $ProfileStateCopyWith<$Res> {
  factory _$$ProfileErrorImplCopyWith(
          _$ProfileErrorImpl value, $Res Function(_$ProfileErrorImpl) then) =
      __$$ProfileErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      UserSessionResponseEntity? user,
      List<QueryHistoryEntity?>? queryHistory});
}

/// @nodoc
class __$$ProfileErrorImplCopyWithImpl<$Res>
    extends _$ProfileStateCopyWithImpl<$Res, _$ProfileErrorImpl>
    implements _$$ProfileErrorImplCopyWith<$Res> {
  __$$ProfileErrorImplCopyWithImpl(
      _$ProfileErrorImpl _value, $Res Function(_$ProfileErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? user = freezed,
    Object? queryHistory = freezed,
  }) {
    return _then(_$ProfileErrorImpl(
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

class _$ProfileErrorImpl implements ProfileError {
  const _$ProfileErrorImpl(
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
    return 'ProfileState.error(message: $message, user: $user, queryHistory: $queryHistory)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other._queryHistory, _queryHistory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, user,
      const DeepCollectionEquality().hash(_queryHistory));

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      __$$ProfileErrorImplCopyWithImpl<_$ProfileErrorImpl>(this, _$identity);

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
    required TResult Function(ProfileInitial value) initial,
    required TResult Function(ProfileLoaded value) loaded,
    required TResult Function(ProfileError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProfileInitial value)? initial,
    TResult? Function(ProfileLoaded value)? loaded,
    TResult? Function(ProfileError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProfileInitial value)? initial,
    TResult Function(ProfileLoaded value)? loaded,
    TResult Function(ProfileError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ProfileError implements ProfileState {
  const factory ProfileError(
      {required final String message,
      final UserSessionResponseEntity? user,
      final List<QueryHistoryEntity?>? queryHistory}) = _$ProfileErrorImpl;

  String get message;
  @override
  UserSessionResponseEntity? get user;
  @override
  List<QueryHistoryEntity?>? get queryHistory;

  /// Create a copy of ProfileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProfileErrorImplCopyWith<_$ProfileErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
