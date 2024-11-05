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
mixin _$SetClearButton {
  bool get show => throw _privateConstructorUsedError;

  /// Create a copy of SetClearButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetClearButtonCopyWith<SetClearButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetClearButtonCopyWith<$Res> {
  factory $SetClearButtonCopyWith(
          SetClearButton value, $Res Function(SetClearButton) then) =
      _$SetClearButtonCopyWithImpl<$Res, SetClearButton>;
  @useResult
  $Res call({bool show});
}

/// @nodoc
class _$SetClearButtonCopyWithImpl<$Res, $Val extends SetClearButton>
    implements $SetClearButtonCopyWith<$Res> {
  _$SetClearButtonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetClearButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
  }) {
    return _then(_value.copyWith(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetClearButtonImplCopyWith<$Res>
    implements $SetClearButtonCopyWith<$Res> {
  factory _$$SetClearButtonImplCopyWith(_$SetClearButtonImpl value,
          $Res Function(_$SetClearButtonImpl) then) =
      __$$SetClearButtonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool show});
}

/// @nodoc
class __$$SetClearButtonImplCopyWithImpl<$Res>
    extends _$SetClearButtonCopyWithImpl<$Res, _$SetClearButtonImpl>
    implements _$$SetClearButtonImplCopyWith<$Res> {
  __$$SetClearButtonImplCopyWithImpl(
      _$SetClearButtonImpl _value, $Res Function(_$SetClearButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetClearButton
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? show = null,
  }) {
    return _then(_$SetClearButtonImpl(
      show: null == show
          ? _value.show
          : show // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SetClearButtonImpl implements _SetClearButton {
  const _$SetClearButtonImpl({required this.show});

  @override
  final bool show;

  @override
  String toString() {
    return 'SetClearButton(show: $show)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetClearButtonImpl &&
            (identical(other.show, show) || other.show == show));
  }

  @override
  int get hashCode => Object.hash(runtimeType, show);

  /// Create a copy of SetClearButton
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetClearButtonImplCopyWith<_$SetClearButtonImpl> get copyWith =>
      __$$SetClearButtonImplCopyWithImpl<_$SetClearButtonImpl>(
          this, _$identity);
}

abstract class _SetClearButton implements SetClearButton {
  const factory _SetClearButton({required final bool show}) =
      _$SetClearButtonImpl;

  @override
  bool get show;

  /// Create a copy of SetClearButton
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetClearButtonImplCopyWith<_$SetClearButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  SearchResultEntity? get result => throw _privateConstructorUsedError;
  bool? get hasReachedMax => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  List<PreSearchItemEntity>? get preSearchItems =>
      throw _privateConstructorUsedError;
  dynamic get showClearButton => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        initial,
    required TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        loaded,
    required TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult? Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult? Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
    TResult Function(SearchLoaded value)? loaded,
    TResult Function(SearchError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {SearchResultEntity result,
      bool hasReachedMax,
      int currentPage,
      List<PreSearchItemEntity>? preSearchItems,
      dynamic showClearButton});

  $SearchResultEntityCopyWith<$Res>? get result;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? hasReachedMax = null,
    Object? currentPage = null,
    Object? preSearchItems = freezed,
    Object? showClearButton = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result!
          : result // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity,
      hasReachedMax: null == hasReachedMax
          ? _value.hasReachedMax!
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      preSearchItems: freezed == preSearchItems
          ? _value.preSearchItems
          : preSearchItems // ignore: cast_nullable_to_non_nullable
              as List<PreSearchItemEntity>?,
      showClearButton: freezed == showClearButton
          ? _value.showClearButton
          : showClearButton // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResultEntityCopyWith<$Res>? get result {
    if (_value.result == null) {
      return null;
    }

    return $SearchResultEntityCopyWith<$Res>(_value.result!, (value) {
      return _then(_value.copyWith(result: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SearchInitialImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchInitialImplCopyWith(
          _$SearchInitialImpl value, $Res Function(_$SearchInitialImpl) then) =
      __$$SearchInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchResultEntity? result,
      bool? hasReachedMax,
      int currentPage,
      List<PreSearchItemEntity>? preSearchItems,
      dynamic showClearButton});

  @override
  $SearchResultEntityCopyWith<$Res>? get result;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
    Object? hasReachedMax = freezed,
    Object? currentPage = null,
    Object? preSearchItems = freezed,
    Object? showClearButton = freezed,
  }) {
    return _then(_$SearchInitialImpl(
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity?,
      hasReachedMax: freezed == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      preSearchItems: freezed == preSearchItems
          ? _value._preSearchItems
          : preSearchItems // ignore: cast_nullable_to_non_nullable
              as List<PreSearchItemEntity>?,
      showClearButton: freezed == showClearButton
          ? _value.showClearButton!
          : showClearButton,
    ));
  }
}

/// @nodoc

class _$SearchInitialImpl implements SearchInitial {
  const _$SearchInitialImpl(
      {this.result,
      this.hasReachedMax,
      this.currentPage = 1,
      final List<PreSearchItemEntity>? preSearchItems,
      this.showClearButton = false})
      : _preSearchItems = preSearchItems;

  @override
  final SearchResultEntity? result;
  @override
  final bool? hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;
  final List<PreSearchItemEntity>? _preSearchItems;
  @override
  List<PreSearchItemEntity>? get preSearchItems {
    final value = _preSearchItems;
    if (value == null) return null;
    if (_preSearchItems is EqualUnmodifiableListView) return _preSearchItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic showClearButton;

  @override
  String toString() {
    return 'SearchState.initial(result: $result, hasReachedMax: $hasReachedMax, currentPage: $currentPage, preSearchItems: $preSearchItems, showClearButton: $showClearButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchInitialImpl &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._preSearchItems, _preSearchItems) &&
            const DeepCollectionEquality()
                .equals(other.showClearButton, showClearButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      hasReachedMax,
      currentPage,
      const DeepCollectionEquality().hash(_preSearchItems),
      const DeepCollectionEquality().hash(showClearButton));

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchInitialImplCopyWith<_$SearchInitialImpl> get copyWith =>
      __$$SearchInitialImplCopyWithImpl<_$SearchInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        initial,
    required TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        loaded,
    required TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        error,
  }) {
    return initial(
        result, hasReachedMax, currentPage, preSearchItems, showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult? Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult? Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
  }) {
    return initial?.call(
        result, hasReachedMax, currentPage, preSearchItems, showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          result, hasReachedMax, currentPage, preSearchItems, showClearButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
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
  const factory SearchInitial(
      {final SearchResultEntity? result,
      final bool? hasReachedMax,
      final int currentPage,
      final List<PreSearchItemEntity>? preSearchItems,
      final dynamic showClearButton}) = _$SearchInitialImpl;

  @override
  SearchResultEntity? get result;
  @override
  bool? get hasReachedMax;
  @override
  int get currentPage;
  @override
  List<PreSearchItemEntity>? get preSearchItems;
  @override
  dynamic get showClearButton;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchInitialImplCopyWith<_$SearchInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchLoadedImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchLoadedImplCopyWith(
          _$SearchLoadedImpl value, $Res Function(_$SearchLoadedImpl) then) =
      __$$SearchLoadedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchResultEntity result,
      bool hasReachedMax,
      int currentPage,
      List<PreSearchItemEntity>? preSearchItems,
      dynamic showClearButton});

  @override
  $SearchResultEntityCopyWith<$Res> get result;
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
    Object? preSearchItems = freezed,
    Object? showClearButton = freezed,
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
      preSearchItems: freezed == preSearchItems
          ? _value._preSearchItems
          : preSearchItems // ignore: cast_nullable_to_non_nullable
              as List<PreSearchItemEntity>?,
      showClearButton: freezed == showClearButton
          ? _value.showClearButton!
          : showClearButton,
    ));
  }

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SearchResultEntityCopyWith<$Res> get result {
    return $SearchResultEntityCopyWith<$Res>(_value.result, (value) {
      return _then(_value.copyWith(result: value));
    });
  }
}

/// @nodoc

class _$SearchLoadedImpl implements SearchLoaded {
  const _$SearchLoadedImpl(
      {required this.result,
      required this.hasReachedMax,
      this.currentPage = 1,
      final List<PreSearchItemEntity>? preSearchItems,
      this.showClearButton = false})
      : _preSearchItems = preSearchItems;

  @override
  final SearchResultEntity result;
  @override
  final bool hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;
  final List<PreSearchItemEntity>? _preSearchItems;
  @override
  List<PreSearchItemEntity>? get preSearchItems {
    final value = _preSearchItems;
    if (value == null) return null;
    if (_preSearchItems is EqualUnmodifiableListView) return _preSearchItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic showClearButton;

  @override
  String toString() {
    return 'SearchState.loaded(result: $result, hasReachedMax: $hasReachedMax, currentPage: $currentPage, preSearchItems: $preSearchItems, showClearButton: $showClearButton)';
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
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._preSearchItems, _preSearchItems) &&
            const DeepCollectionEquality()
                .equals(other.showClearButton, showClearButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      result,
      hasReachedMax,
      currentPage,
      const DeepCollectionEquality().hash(_preSearchItems),
      const DeepCollectionEquality().hash(showClearButton));

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
    required TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        initial,
    required TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        loaded,
    required TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        error,
  }) {
    return loaded(
        result, hasReachedMax, currentPage, preSearchItems, showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult? Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult? Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
  }) {
    return loaded?.call(
        result, hasReachedMax, currentPage, preSearchItems, showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(
          result, hasReachedMax, currentPage, preSearchItems, showClearButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
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
      final int currentPage,
      final List<PreSearchItemEntity>? preSearchItems,
      final dynamic showClearButton}) = _$SearchLoadedImpl;

  @override
  SearchResultEntity get result;
  @override
  bool get hasReachedMax;
  @override
  int get currentPage;
  @override
  List<PreSearchItemEntity>? get preSearchItems;
  @override
  dynamic get showClearButton;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchLoadedImplCopyWith<_$SearchLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchErrorImplCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$SearchErrorImplCopyWith(
          _$SearchErrorImpl value, $Res Function(_$SearchErrorImpl) then) =
      __$$SearchErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String message,
      SearchResultEntity? result,
      bool? hasReachedMax,
      int currentPage,
      List<PreSearchItemEntity>? preSearchItems,
      dynamic showClearButton});

  @override
  $SearchResultEntityCopyWith<$Res>? get result;
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
    Object? result = freezed,
    Object? hasReachedMax = freezed,
    Object? currentPage = null,
    Object? preSearchItems = freezed,
    Object? showClearButton = freezed,
  }) {
    return _then(_$SearchErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      result: freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as SearchResultEntity?,
      hasReachedMax: freezed == hasReachedMax
          ? _value.hasReachedMax
          : hasReachedMax // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      preSearchItems: freezed == preSearchItems
          ? _value._preSearchItems
          : preSearchItems // ignore: cast_nullable_to_non_nullable
              as List<PreSearchItemEntity>?,
      showClearButton: freezed == showClearButton
          ? _value.showClearButton!
          : showClearButton,
    ));
  }
}

/// @nodoc

class _$SearchErrorImpl implements SearchError {
  const _$SearchErrorImpl(
      {required this.message,
      this.result,
      this.hasReachedMax,
      this.currentPage = 1,
      final List<PreSearchItemEntity>? preSearchItems,
      this.showClearButton = false})
      : _preSearchItems = preSearchItems;

  @override
  final String message;
  @override
  final SearchResultEntity? result;
  @override
  final bool? hasReachedMax;
  @override
  @JsonKey()
  final int currentPage;
  final List<PreSearchItemEntity>? _preSearchItems;
  @override
  List<PreSearchItemEntity>? get preSearchItems {
    final value = _preSearchItems;
    if (value == null) return null;
    if (_preSearchItems is EqualUnmodifiableListView) return _preSearchItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final dynamic showClearButton;

  @override
  String toString() {
    return 'SearchState.error(message: $message, result: $result, hasReachedMax: $hasReachedMax, currentPage: $currentPage, preSearchItems: $preSearchItems, showClearButton: $showClearButton)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchErrorImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.hasReachedMax, hasReachedMax) ||
                other.hasReachedMax == hasReachedMax) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            const DeepCollectionEquality()
                .equals(other._preSearchItems, _preSearchItems) &&
            const DeepCollectionEquality()
                .equals(other.showClearButton, showClearButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      message,
      result,
      hasReachedMax,
      currentPage,
      const DeepCollectionEquality().hash(_preSearchItems),
      const DeepCollectionEquality().hash(showClearButton));

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
    required TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        initial,
    required TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        loaded,
    required TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)
        error,
  }) {
    return error(message, result, hasReachedMax, currentPage, preSearchItems,
        showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult? Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult? Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
  }) {
    return error?.call(message, result, hasReachedMax, currentPage,
        preSearchItems, showClearButton);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        initial,
    TResult Function(
            SearchResultEntity result,
            bool hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        loaded,
    TResult Function(
            String message,
            SearchResultEntity? result,
            bool? hasReachedMax,
            int currentPage,
            List<PreSearchItemEntity>? preSearchItems,
            dynamic showClearButton)?
        error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message, result, hasReachedMax, currentPage, preSearchItems,
          showClearButton);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchInitial value) initial,
    required TResult Function(SearchLoaded value) loaded,
    required TResult Function(SearchError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SearchInitial value)? initial,
    TResult? Function(SearchLoaded value)? loaded,
    TResult? Function(SearchError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchInitial value)? initial,
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
  const factory SearchError(
      {required final String message,
      final SearchResultEntity? result,
      final bool? hasReachedMax,
      final int currentPage,
      final List<PreSearchItemEntity>? preSearchItems,
      final dynamic showClearButton}) = _$SearchErrorImpl;

  String get message;
  @override
  SearchResultEntity? get result;
  @override
  bool? get hasReachedMax;
  @override
  int get currentPage;
  @override
  List<PreSearchItemEntity>? get preSearchItems;
  @override
  dynamic get showClearButton;

  /// Create a copy of SearchState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchErrorImplCopyWith<_$SearchErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
