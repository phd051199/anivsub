// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadHome {}

/// @nodoc
abstract class $LoadHomeCopyWith<$Res> {
  factory $LoadHomeCopyWith(LoadHome value, $Res Function(LoadHome) then) =
      _$LoadHomeCopyWithImpl<$Res, LoadHome>;
}

/// @nodoc
class _$LoadHomeCopyWithImpl<$Res, $Val extends LoadHome>
    implements $LoadHomeCopyWith<$Res> {
  _$LoadHomeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadHome
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadHomeImplCopyWith<$Res> {
  factory _$$LoadHomeImplCopyWith(
          _$LoadHomeImpl value, $Res Function(_$LoadHomeImpl) then) =
      __$$LoadHomeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadHomeImplCopyWithImpl<$Res>
    extends _$LoadHomeCopyWithImpl<$Res, _$LoadHomeImpl>
    implements _$$LoadHomeImplCopyWith<$Res> {
  __$$LoadHomeImplCopyWithImpl(
      _$LoadHomeImpl _value, $Res Function(_$LoadHomeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadHome
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadHomeImpl implements _LoadHome {
  const _$LoadHomeImpl();

  @override
  String toString() {
    return 'LoadHome()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadHomeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _LoadHome implements LoadHome {
  const factory _LoadHome() = _$LoadHomeImpl;
}

/// @nodoc
mixin _$HomeState {
  HomeDataCategoriesEntity? get homeData => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeDataCategoriesEntity? homeData) initial,
    required TResult Function(HomeDataCategoriesEntity homeData) loaded,
    required TResult Function(
            String message, HomeDataCategoriesEntity? homeData)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult? Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult? Function(String message, HomeDataCategoriesEntity? homeData)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult Function(String message, HomeDataCategoriesEntity? homeData)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({HomeDataCategoriesEntity homeData});

  $HomeDataCategoriesEntityCopyWith<$Res>? get homeData;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
  }) {
    return _then(_value.copyWith(
      homeData: null == homeData
          ? _value.homeData!
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataCategoriesEntity,
    ) as $Val);
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataCategoriesEntityCopyWith<$Res>? get homeData {
    if (_value.homeData == null) {
      return null;
    }

    return $HomeDataCategoriesEntityCopyWith<$Res>(_value.homeData!, (value) {
      return _then(_value.copyWith(homeData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeInitialImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeInitialImplCopyWith(
          _$HomeInitialImpl value, $Res Function(_$HomeInitialImpl) then) =
      __$$HomeInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeDataCategoriesEntity? homeData});

  @override
  $HomeDataCategoriesEntityCopyWith<$Res>? get homeData;
}

/// @nodoc
class __$$HomeInitialImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeInitialImpl>
    implements _$$HomeInitialImplCopyWith<$Res> {
  __$$HomeInitialImplCopyWithImpl(
      _$HomeInitialImpl _value, $Res Function(_$HomeInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = freezed,
  }) {
    return _then(_$HomeInitialImpl(
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataCategoriesEntity?,
    ));
  }
}

/// @nodoc

class _$HomeInitialImpl implements HomeInitial {
  const _$HomeInitialImpl({this.homeData});

  @override
  final HomeDataCategoriesEntity? homeData;

  @override
  String toString() {
    return 'HomeState.initial(homeData: $homeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeInitialImpl &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeData);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeInitialImplCopyWith<_$HomeInitialImpl> get copyWith =>
      __$$HomeInitialImplCopyWithImpl<_$HomeInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeDataCategoriesEntity? homeData) initial,
    required TResult Function(HomeDataCategoriesEntity homeData) loaded,
    required TResult Function(
            String message, HomeDataCategoriesEntity? homeData)
        error,
  }) {
    return initial(homeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult? Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult? Function(String message, HomeDataCategoriesEntity? homeData)?
        error,
  }) {
    return initial?.call(homeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult Function(String message, HomeDataCategoriesEntity? homeData)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(homeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeInitial implements HomeState {
  const factory HomeInitial({final HomeDataCategoriesEntity? homeData}) =
      _$HomeInitialImpl;

  @override
  HomeDataCategoriesEntity? get homeData;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeInitialImplCopyWith<_$HomeInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeLoadedImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeLoadedImplCopyWith(
          _$HomeLoadedImpl value, $Res Function(_$HomeLoadedImpl) then) =
      __$$HomeLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({HomeDataCategoriesEntity homeData});

  @override
  $HomeDataCategoriesEntityCopyWith<$Res> get homeData;
}

/// @nodoc
class __$$HomeLoadedImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeLoadedImpl>
    implements _$$HomeLoadedImplCopyWith<$Res> {
  __$$HomeLoadedImplCopyWithImpl(
      _$HomeLoadedImpl _value, $Res Function(_$HomeLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? homeData = null,
  }) {
    return _then(_$HomeLoadedImpl(
      homeData: null == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataCategoriesEntity,
    ));
  }

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $HomeDataCategoriesEntityCopyWith<$Res> get homeData {
    return $HomeDataCategoriesEntityCopyWith<$Res>(_value.homeData, (value) {
      return _then(_value.copyWith(homeData: value));
    });
  }
}

/// @nodoc

class _$HomeLoadedImpl implements HomeLoaded {
  const _$HomeLoadedImpl({required this.homeData});

  @override
  final HomeDataCategoriesEntity homeData;

  @override
  String toString() {
    return 'HomeState.loaded(homeData: $homeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeLoadedImpl &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, homeData);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeLoadedImplCopyWith<_$HomeLoadedImpl> get copyWith =>
      __$$HomeLoadedImplCopyWithImpl<_$HomeLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeDataCategoriesEntity? homeData) initial,
    required TResult Function(HomeDataCategoriesEntity homeData) loaded,
    required TResult Function(
            String message, HomeDataCategoriesEntity? homeData)
        error,
  }) {
    return loaded(homeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult? Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult? Function(String message, HomeDataCategoriesEntity? homeData)?
        error,
  }) {
    return loaded?.call(homeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult Function(String message, HomeDataCategoriesEntity? homeData)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(homeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HomeLoaded implements HomeState {
  const factory HomeLoaded({required final HomeDataCategoriesEntity homeData}) =
      _$HomeLoadedImpl;

  @override
  HomeDataCategoriesEntity get homeData;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeLoadedImplCopyWith<_$HomeLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeErrorImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeErrorImplCopyWith(
          _$HomeErrorImpl value, $Res Function(_$HomeErrorImpl) then) =
      __$$HomeErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message, HomeDataCategoriesEntity? homeData});

  @override
  $HomeDataCategoriesEntityCopyWith<$Res>? get homeData;
}

/// @nodoc
class __$$HomeErrorImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeErrorImpl>
    implements _$$HomeErrorImplCopyWith<$Res> {
  __$$HomeErrorImplCopyWithImpl(
      _$HomeErrorImpl _value, $Res Function(_$HomeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? homeData = freezed,
  }) {
    return _then(_$HomeErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      homeData: freezed == homeData
          ? _value.homeData
          : homeData // ignore: cast_nullable_to_non_nullable
              as HomeDataCategoriesEntity?,
    ));
  }
}

/// @nodoc

class _$HomeErrorImpl implements HomeError {
  const _$HomeErrorImpl({required this.message, this.homeData});

  @override
  final String message;
  @override
  final HomeDataCategoriesEntity? homeData;

  @override
  String toString() {
    return 'HomeState.error(message: $message, homeData: $homeData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.homeData, homeData) ||
                other.homeData == homeData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message, homeData);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      __$$HomeErrorImplCopyWithImpl<_$HomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(HomeDataCategoriesEntity? homeData) initial,
    required TResult Function(HomeDataCategoriesEntity homeData) loaded,
    required TResult Function(
            String message, HomeDataCategoriesEntity? homeData)
        error,
  }) {
    return error(message, homeData);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult? Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult? Function(String message, HomeDataCategoriesEntity? homeData)?
        error,
  }) {
    return error?.call(message, homeData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(HomeDataCategoriesEntity? homeData)? initial,
    TResult Function(HomeDataCategoriesEntity homeData)? loaded,
    TResult Function(String message, HomeDataCategoriesEntity? homeData)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, homeData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeInitial value) initial,
    required TResult Function(HomeLoaded value) loaded,
    required TResult Function(HomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeInitial value)? initial,
    TResult? Function(HomeLoaded value)? loaded,
    TResult? Function(HomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeInitial value)? initial,
    TResult Function(HomeLoaded value)? loaded,
    TResult Function(HomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HomeError implements HomeState {
  const factory HomeError(
      {required final String message,
      final HomeDataCategoriesEntity? homeData}) = _$HomeErrorImpl;

  String get message;
  @override
  HomeDataCategoriesEntity? get homeData;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeErrorImplCopyWith<_$HomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
