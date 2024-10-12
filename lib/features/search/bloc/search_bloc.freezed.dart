// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadSearch {
  String get keyword => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;

  /// Create a copy of LoadSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadSearchCopyWith<LoadSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadSearchCopyWith<$Res> {
  factory $LoadSearchCopyWith(
          LoadSearch value, $Res Function(LoadSearch) then) =
      _$LoadSearchCopyWithImpl<$Res, LoadSearch>;
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class _$LoadSearchCopyWithImpl<$Res, $Val extends LoadSearch>
    implements $LoadSearchCopyWith<$Res> {
  _$LoadSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadSearchImplCopyWith<$Res>
    implements $LoadSearchCopyWith<$Res> {
  factory _$$LoadSearchImplCopyWith(
          _$LoadSearchImpl value, $Res Function(_$LoadSearchImpl) then) =
      __$$LoadSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int page});
}

/// @nodoc
class __$$LoadSearchImplCopyWithImpl<$Res>
    extends _$LoadSearchCopyWithImpl<$Res, _$LoadSearchImpl>
    implements _$$LoadSearchImplCopyWith<$Res> {
  __$$LoadSearchImplCopyWithImpl(
      _$LoadSearchImpl _value, $Res Function(_$LoadSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = null,
  }) {
    return _then(_$LoadSearchImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LoadSearchImpl implements _LoadSearch {
  const _$LoadSearchImpl({required this.keyword, required this.page});

  @override
  final String keyword;
  @override
  final int page;

  @override
  String toString() {
    return 'LoadSearch(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadSearchImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  /// Create a copy of LoadSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadSearchImplCopyWith<_$LoadSearchImpl> get copyWith =>
      __$$LoadSearchImplCopyWithImpl<_$LoadSearchImpl>(this, _$identity);
}

abstract class _LoadSearch implements LoadSearch {
  const factory _LoadSearch(
      {required final String keyword,
      required final int page}) = _$LoadSearchImpl;

  @override
  String get keyword;
  @override
  int get page;

  /// Create a copy of LoadSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadSearchImplCopyWith<_$LoadSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SubmitSearch {
  String get keyword => throw _privateConstructorUsedError;
  int? get page => throw _privateConstructorUsedError;

  /// Create a copy of SubmitSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubmitSearchCopyWith<SubmitSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitSearchCopyWith<$Res> {
  factory $SubmitSearchCopyWith(
          SubmitSearch value, $Res Function(SubmitSearch) then) =
      _$SubmitSearchCopyWithImpl<$Res, SubmitSearch>;
  @useResult
  $Res call({String keyword, int? page});
}

/// @nodoc
class _$SubmitSearchCopyWithImpl<$Res, $Val extends SubmitSearch>
    implements $SubmitSearchCopyWith<$Res> {
  _$SubmitSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubmitSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubmitSearchImplCopyWith<$Res>
    implements $SubmitSearchCopyWith<$Res> {
  factory _$$SubmitSearchImplCopyWith(
          _$SubmitSearchImpl value, $Res Function(_$SubmitSearchImpl) then) =
      __$$SubmitSearchImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String keyword, int? page});
}

/// @nodoc
class __$$SubmitSearchImplCopyWithImpl<$Res>
    extends _$SubmitSearchCopyWithImpl<$Res, _$SubmitSearchImpl>
    implements _$$SubmitSearchImplCopyWith<$Res> {
  __$$SubmitSearchImplCopyWithImpl(
      _$SubmitSearchImpl _value, $Res Function(_$SubmitSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubmitSearch
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
    Object? page = freezed,
  }) {
    return _then(_$SubmitSearchImpl(
      keyword: null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$SubmitSearchImpl implements _SubmitSearch {
  const _$SubmitSearchImpl({required this.keyword, this.page});

  @override
  final String keyword;
  @override
  final int? page;

  @override
  String toString() {
    return 'SubmitSearch(keyword: $keyword, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubmitSearchImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword, page);

  /// Create a copy of SubmitSearch
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubmitSearchImplCopyWith<_$SubmitSearchImpl> get copyWith =>
      __$$SubmitSearchImplCopyWithImpl<_$SubmitSearchImpl>(this, _$identity);
}

abstract class _SubmitSearch implements SubmitSearch {
  const factory _SubmitSearch(
      {required final String keyword, final int? page}) = _$SubmitSearchImpl;

  @override
  String get keyword;
  @override
  int? get page;

  /// Create a copy of SubmitSearch
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubmitSearchImplCopyWith<_$SubmitSearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ErrorSearch {}

/// @nodoc
abstract class $ErrorSearchCopyWith<$Res> {
  factory $ErrorSearchCopyWith(
          ErrorSearch value, $Res Function(ErrorSearch) then) =
      _$ErrorSearchCopyWithImpl<$Res, ErrorSearch>;
}

/// @nodoc
class _$ErrorSearchCopyWithImpl<$Res, $Val extends ErrorSearch>
    implements $ErrorSearchCopyWith<$Res> {
  _$ErrorSearchCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ErrorSearch
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorSearchImplCopyWith<$Res> {
  factory _$$ErrorSearchImplCopyWith(
          _$ErrorSearchImpl value, $Res Function(_$ErrorSearchImpl) then) =
      __$$ErrorSearchImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorSearchImplCopyWithImpl<$Res>
    extends _$ErrorSearchCopyWithImpl<$Res, _$ErrorSearchImpl>
    implements _$$ErrorSearchImplCopyWith<$Res> {
  __$$ErrorSearchImplCopyWithImpl(
      _$ErrorSearchImpl _value, $Res Function(_$ErrorSearchImpl) _then)
      : super(_value, _then);

  /// Create a copy of ErrorSearch
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorSearchImpl implements _ErrorSearch {
  const _$ErrorSearchImpl();

  @override
  String toString() {
    return 'ErrorSearch()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ErrorSearchImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ErrorSearch implements ErrorSearch {
  const factory _ErrorSearch() = _$ErrorSearchImpl;
}

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)
        loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
        loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<$Res> {
  factory _$$SearchInitialImplCopyWith(
          _$SearchInitialImpl value, $Res Function(_$SearchInitialImpl) then) =
      __$$SearchInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchInitialImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchInitialImpl>
    implements _$$SearchInitialImplCopyWith<$Res> {
  __$$SearchInitialImplCopyWithImpl(
      _$SearchInitialImpl _value, $Res Function(_$SearchInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchInitialImpl implements SearchInitial {
  const _$SearchInitialImpl();

  @override
  String toString() {
    return 'SearchState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SearchInitial implements SearchState {
  const factory SearchInitial() = _$SearchInitialImpl;
}

/// @nodoc
abstract class _$$SearchLoadingImplCopyWith<$Res> {
  factory _$$SearchLoadingImplCopyWith(
          _$SearchLoadingImpl value, $Res Function(_$SearchLoadingImpl) then) =
      __$$SearchLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SearchLoadingImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadingImpl>
    implements _$$SearchLoadingImplCopyWith<$Res> {
  __$$SearchLoadingImplCopyWithImpl(
      _$SearchLoadingImpl _value, $Res Function(_$SearchLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SearchLoadingImpl implements SearchLoading {
  const _$SearchLoadingImpl();

  @override
  String toString() {
    return 'SearchState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SearchLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class SearchLoading implements SearchState {
  const factory SearchLoading() = _$SearchLoadingImpl;
}

/// @nodoc
abstract class _$$SearchLoadedImplCopyWith<$Res> {
  factory _$$SearchLoadedImplCopyWith(
          _$SearchLoadedImpl value, $Res Function(_$SearchLoadedImpl) then) =
      __$$SearchLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchResultEntity result, bool hasReachedMax, int currentPage});
}

/// @nodoc
class __$$SearchLoadedImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchLoadedImpl>
    implements _$$SearchLoadedImplCopyWith<$Res> {
  __$$SearchLoadedImplCopyWithImpl(
      _$SearchLoadedImpl _value, $Res Function(_$SearchLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
  }) {
    return _then(_$SearchLoadedImpl(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SearchLoadedImpl implements SearchLoaded {
  const _$SearchLoadedImpl(
      {required this.result,
      required this.hasReachedMax,
      this.currentPage = 1});

  @override
  final SearchResultEntity result;
  @override
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'SearchState.loaded(result: $result, hasReachedMax: $hasReachedMax, currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLoadedImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, result, hasReachedMax, currentPage);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLoadedImplCopyWith<_$SearchLoadedImpl> get copyWith =>
      __$$SearchLoadedImplCopyWithImpl<_$SearchLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)
        loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(result, hasReachedMax, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
        loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(result, hasReachedMax, currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
        loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(result, hasReachedMax, currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class SearchLoaded implements SearchState {
  const factory SearchLoaded(
      {required final SearchResultEntity result,
      required final bool hasReachedMax,
      final int currentPage}) = _$SearchLoadedImpl;

  SearchResultEntity get result;
  bool get hasReachedMax;
  int get currentPage;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLoadedImplCopyWith<_$SearchLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$SearchErrorImplCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$SearchErrorImpl>
    implements _$$SearchErrorImplCopyWith<$Res> {
  __$$SearchErrorImplCopyWithImpl(
      _$SearchErrorImpl _value, $Res Function(_$SearchErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$SearchErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl implements SearchError {
  const _$SearchErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'SearchState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      __$$SearchErrorImplCopyWithImpl<_$SearchErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            SearchResultEntity result, bool hasReachedMax, int currentPage)
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
            SearchResultEntity result, bool hasReachedMax, int currentPage)?
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
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoading value) loading,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoading value)? loading,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoading value)? loading,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SearchError implements SearchState {
  const factory SearchError(final String message) = _$SearchErrorImpl;

  String get message;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
