// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SettingsState {
  bool get isHintVisible => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isHintVisible) initial,
    required TResult Function(bool isHintVisible) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isHintVisible)? initial,
    TResult? Function(bool isHintVisible)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isHintVisible)? initial,
    TResult Function(bool isHintVisible)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res, SettingsState>;
  @useResult
  $Res call({bool isHintVisible});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res, $Val extends SettingsState>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHintVisible = null,
  }) {
    return _then(_value.copyWith(
      isHintVisible: null == isHintVisible
          ? _value.isHintVisible
          : isHintVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingsInitialImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsInitialImplCopyWith(_$SettingsInitialImpl value,
          $Res Function(_$SettingsInitialImpl) then) =
      __$$SettingsInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHintVisible});
}

/// @nodoc
class __$$SettingsInitialImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsInitialImpl>
    implements _$$SettingsInitialImplCopyWith<$Res> {
  __$$SettingsInitialImplCopyWithImpl(
      _$SettingsInitialImpl _value, $Res Function(_$SettingsInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHintVisible = null,
  }) {
    return _then(_$SettingsInitialImpl(
      isHintVisible: null == isHintVisible
          ? _value.isHintVisible
          : isHintVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsInitialImpl implements SettingsInitial {
  const _$SettingsInitialImpl({required this.isHintVisible});

  @override
  final bool isHintVisible;

  @override
  String toString() {
    return 'SettingsState.initial(isHintVisible: $isHintVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsInitialImpl &&
            (identical(other.isHintVisible, isHintVisible) ||
                other.isHintVisible == isHintVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHintVisible);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsInitialImplCopyWith<_$SettingsInitialImpl> get copyWith =>
      __$$SettingsInitialImplCopyWithImpl<_$SettingsInitialImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isHintVisible) initial,
    required TResult Function(bool isHintVisible) changed,
  }) {
    return initial(isHintVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isHintVisible)? initial,
    TResult? Function(bool isHintVisible)? changed,
  }) {
    return initial?.call(isHintVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isHintVisible)? initial,
    TResult Function(bool isHintVisible)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isHintVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsChanged value) changed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsChanged value)? changed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsChanged value)? changed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class SettingsInitial implements SettingsState {
  const factory SettingsInitial({required final bool isHintVisible}) =
      _$SettingsInitialImpl;

  @override
  bool get isHintVisible;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsInitialImplCopyWith<_$SettingsInitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SettingsChangedImplCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$SettingsChangedImplCopyWith(_$SettingsChangedImpl value,
          $Res Function(_$SettingsChangedImpl) then) =
      __$$SettingsChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isHintVisible});
}

/// @nodoc
class __$$SettingsChangedImplCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res, _$SettingsChangedImpl>
    implements _$$SettingsChangedImplCopyWith<$Res> {
  __$$SettingsChangedImplCopyWithImpl(
      _$SettingsChangedImpl _value, $Res Function(_$SettingsChangedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHintVisible = null,
  }) {
    return _then(_$SettingsChangedImpl(
      isHintVisible: null == isHintVisible
          ? _value.isHintVisible
          : isHintVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SettingsChangedImpl implements SettingsChanged {
  const _$SettingsChangedImpl({required this.isHintVisible});

  @override
  final bool isHintVisible;

  @override
  String toString() {
    return 'SettingsState.changed(isHintVisible: $isHintVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsChangedImpl &&
            (identical(other.isHintVisible, isHintVisible) ||
                other.isHintVisible == isHintVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isHintVisible);

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsChangedImplCopyWith<_$SettingsChangedImpl> get copyWith =>
      __$$SettingsChangedImplCopyWithImpl<_$SettingsChangedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isHintVisible) initial,
    required TResult Function(bool isHintVisible) changed,
  }) {
    return changed(isHintVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isHintVisible)? initial,
    TResult? Function(bool isHintVisible)? changed,
  }) {
    return changed?.call(isHintVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isHintVisible)? initial,
    TResult Function(bool isHintVisible)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(isHintVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SettingsInitial value) initial,
    required TResult Function(SettingsChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SettingsInitial value)? initial,
    TResult? Function(SettingsChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SettingsInitial value)? initial,
    TResult Function(SettingsChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class SettingsChanged implements SettingsState {
  const factory SettingsChanged({required final bool isHintVisible}) =
      _$SettingsChangedImpl;

  @override
  bool get isHintVisible;

  /// Create a copy of SettingsState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsChangedImplCopyWith<_$SettingsChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
