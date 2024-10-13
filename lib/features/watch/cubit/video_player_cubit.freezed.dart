// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_player_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerLoaded value) loaded,
    required TResult Function(VideoPlayerError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerLoaded value)? loaded,
    TResult? Function(VideoPlayerError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerLoaded value)? loaded,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoPlayerStateCopyWith<$Res> {
  factory $VideoPlayerStateCopyWith(
          VideoPlayerState value, $Res Function(VideoPlayerState) then) =
      _$VideoPlayerStateCopyWithImpl<$Res, VideoPlayerState>;
}

/// @nodoc
class _$VideoPlayerStateCopyWithImpl<$Res, $Val extends VideoPlayerState>
    implements $VideoPlayerStateCopyWith<$Res> {
  _$VideoPlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VideoPlayerInitialImplCopyWith<$Res> {
  factory _$$VideoPlayerInitialImplCopyWith(_$VideoPlayerInitialImpl value,
          $Res Function(_$VideoPlayerInitialImpl) then) =
      __$$VideoPlayerInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerInitialImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerInitialImpl>
    implements _$$VideoPlayerInitialImplCopyWith<$Res> {
  __$$VideoPlayerInitialImplCopyWithImpl(_$VideoPlayerInitialImpl _value,
      $Res Function(_$VideoPlayerInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoPlayerInitialImpl implements VideoPlayerInitial {
  const _$VideoPlayerInitialImpl();

  @override
  String toString() {
    return 'VideoPlayerState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)
        loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerLoaded value) loaded,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerLoaded value)? loaded,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerLoaded value)? loaded,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerInitial implements VideoPlayerState {
  const factory VideoPlayerInitial() = _$VideoPlayerInitialImpl;
}

/// @nodoc
abstract class _$$VideoPlayerLoadingImplCopyWith<$Res> {
  factory _$$VideoPlayerLoadingImplCopyWith(_$VideoPlayerLoadingImpl value,
          $Res Function(_$VideoPlayerLoadingImpl) then) =
      __$$VideoPlayerLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoPlayerLoadingImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerLoadingImpl>
    implements _$$VideoPlayerLoadingImplCopyWith<$Res> {
  __$$VideoPlayerLoadingImplCopyWithImpl(_$VideoPlayerLoadingImpl _value,
      $Res Function(_$VideoPlayerLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoPlayerLoadingImpl implements VideoPlayerLoading {
  const _$VideoPlayerLoadingImpl();

  @override
  String toString() {
    return 'VideoPlayerState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoPlayerLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerLoaded value) loaded,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerLoaded value)? loaded,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerLoaded value)? loaded,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerLoading implements VideoPlayerState {
  const factory VideoPlayerLoading() = _$VideoPlayerLoadingImpl;
}

/// @nodoc
abstract class _$$VideoPlayerLoadedImplCopyWith<$Res> {
  factory _$$VideoPlayerLoadedImplCopyWith(_$VideoPlayerLoadedImpl value,
          $Res Function(_$VideoPlayerLoadedImpl) then) =
      __$$VideoPlayerLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<ChapDataEntity> chaps,
      ChapDataEntity currentChap,
      ChapDataEntity? nextChap,
      ListEpisodeResponseEntity? listEpisode,
      EpisodeSkipResponseEntity? episodeSkip});
}

/// @nodoc
class __$$VideoPlayerLoadedImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerLoadedImpl>
    implements _$$VideoPlayerLoadedImplCopyWith<$Res> {
  __$$VideoPlayerLoadedImplCopyWithImpl(_$VideoPlayerLoadedImpl _value,
      $Res Function(_$VideoPlayerLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chaps = null,
    Object? currentChap = null,
    Object? nextChap = freezed,
    Object? listEpisode = freezed,
    Object? episodeSkip = freezed,
  }) {
    return _then(_$VideoPlayerLoadedImpl(
      chaps: null == chaps
          ? _value._chaps
          : chaps // ignore: cast_nullable_to_non_nullable
              as List<ChapDataEntity>,
      currentChap: null == currentChap
          ? _value.currentChap
          : currentChap // ignore: cast_nullable_to_non_nullable
              as ChapDataEntity,
      nextChap: freezed == nextChap
          ? _value.nextChap
          : nextChap // ignore: cast_nullable_to_non_nullable
              as ChapDataEntity?,
      listEpisode: freezed == listEpisode
          ? _value.listEpisode
          : listEpisode // ignore: cast_nullable_to_non_nullable
              as ListEpisodeResponseEntity?,
      episodeSkip: freezed == episodeSkip
          ? _value.episodeSkip
          : episodeSkip // ignore: cast_nullable_to_non_nullable
              as EpisodeSkipResponseEntity?,
    ));
  }
}

/// @nodoc

class _$VideoPlayerLoadedImpl implements VideoPlayerLoaded {
  const _$VideoPlayerLoadedImpl(
      {required final List<ChapDataEntity> chaps,
      required this.currentChap,
      this.nextChap,
      this.listEpisode,
      this.episodeSkip})
      : _chaps = chaps;

  final List<ChapDataEntity> _chaps;
  @override
  List<ChapDataEntity> get chaps {
    if (_chaps is EqualUnmodifiableListView) return _chaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chaps);
  }

  @override
  final ChapDataEntity currentChap;
  @override
  final ChapDataEntity? nextChap;
  @override
  final ListEpisodeResponseEntity? listEpisode;
  @override
  final EpisodeSkipResponseEntity? episodeSkip;

  @override
  String toString() {
    return 'VideoPlayerState.loaded(chaps: $chaps, currentChap: $currentChap, nextChap: $nextChap, listEpisode: $listEpisode, episodeSkip: $episodeSkip)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerLoadedImpl &&
            const DeepCollectionEquality().equals(other._chaps, _chaps) &&
            (identical(other.currentChap, currentChap) ||
                other.currentChap == currentChap) &&
            (identical(other.nextChap, nextChap) ||
                other.nextChap == nextChap) &&
            (identical(other.listEpisode, listEpisode) ||
                other.listEpisode == listEpisode) &&
            (identical(other.episodeSkip, episodeSkip) ||
                other.episodeSkip == episodeSkip));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chaps),
      currentChap,
      nextChap,
      listEpisode,
      episodeSkip);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerLoadedImplCopyWith<_$VideoPlayerLoadedImpl> get copyWith =>
      __$$VideoPlayerLoadedImplCopyWithImpl<_$VideoPlayerLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(chaps, currentChap, nextChap, listEpisode, episodeSkip);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(chaps, currentChap, nextChap, listEpisode, episodeSkip);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(chaps, currentChap, nextChap, listEpisode, episodeSkip);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerLoaded value) loaded,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerLoaded value)? loaded,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerLoaded value)? loaded,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerLoaded implements VideoPlayerState {
  const factory VideoPlayerLoaded(
      {required final List<ChapDataEntity> chaps,
      required final ChapDataEntity currentChap,
      final ChapDataEntity? nextChap,
      final ListEpisodeResponseEntity? listEpisode,
      final EpisodeSkipResponseEntity? episodeSkip}) = _$VideoPlayerLoadedImpl;

  List<ChapDataEntity> get chaps;
  ChapDataEntity get currentChap;
  ChapDataEntity? get nextChap;
  ListEpisodeResponseEntity? get listEpisode;
  EpisodeSkipResponseEntity? get episodeSkip;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPlayerLoadedImplCopyWith<_$VideoPlayerLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoPlayerErrorImplCopyWith<$Res> {
  factory _$$VideoPlayerErrorImplCopyWith(_$VideoPlayerErrorImpl value,
          $Res Function(_$VideoPlayerErrorImpl) then) =
      __$$VideoPlayerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VideoPlayerErrorImplCopyWithImpl<$Res>
    extends _$VideoPlayerStateCopyWithImpl<$Res, _$VideoPlayerErrorImpl>
    implements _$$VideoPlayerErrorImplCopyWith<$Res> {
  __$$VideoPlayerErrorImplCopyWithImpl(_$VideoPlayerErrorImpl _value,
      $Res Function(_$VideoPlayerErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$VideoPlayerErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VideoPlayerErrorImpl implements VideoPlayerError {
  const _$VideoPlayerErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'VideoPlayerState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoPlayerErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoPlayerErrorImplCopyWith<_$VideoPlayerErrorImpl> get copyWith =>
      __$$VideoPlayerErrorImplCopyWithImpl<_$VideoPlayerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)
        loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            List<ChapDataEntity> chaps,
            ChapDataEntity currentChap,
            ChapDataEntity? nextChap,
            ListEpisodeResponseEntity? listEpisode,
            EpisodeSkipResponseEntity? episodeSkip)?
        loaded,
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
    required TResult Function(VideoPlayerInitial value) initial,
    required TResult Function(VideoPlayerLoading value) loading,
    required TResult Function(VideoPlayerLoaded value) loaded,
    required TResult Function(VideoPlayerError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoPlayerInitial value)? initial,
    TResult? Function(VideoPlayerLoading value)? loading,
    TResult? Function(VideoPlayerLoaded value)? loaded,
    TResult? Function(VideoPlayerError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoPlayerInitial value)? initial,
    TResult Function(VideoPlayerLoading value)? loading,
    TResult Function(VideoPlayerLoaded value)? loaded,
    TResult Function(VideoPlayerError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class VideoPlayerError implements VideoPlayerState {
  const factory VideoPlayerError(final String message) = _$VideoPlayerErrorImpl;

  String get message;

  /// Create a copy of VideoPlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoPlayerErrorImplCopyWith<_$VideoPlayerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
