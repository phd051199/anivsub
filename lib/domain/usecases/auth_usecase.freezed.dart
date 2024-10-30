// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetUserSessionInput {
  UserSessionRequestEntity? get authRequest =>
      throw _privateConstructorUsedError;

  /// Create a copy of GetUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetUserSessionInputCopyWith<GetUserSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserSessionInputCopyWith<$Res> {
  factory $GetUserSessionInputCopyWith(
          GetUserSessionInput value, $Res Function(GetUserSessionInput) then) =
      _$GetUserSessionInputCopyWithImpl<$Res, GetUserSessionInput>;
  @useResult
  $Res call({UserSessionRequestEntity? authRequest});
}

/// @nodoc
class _$GetUserSessionInputCopyWithImpl<$Res, $Val extends GetUserSessionInput>
    implements $GetUserSessionInputCopyWith<$Res> {
  _$GetUserSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_value.copyWith(
      authRequest: freezed == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as UserSessionRequestEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetUserSessionInputImplCopyWith<$Res>
    implements $GetUserSessionInputCopyWith<$Res> {
  factory _$$GetUserSessionInputImplCopyWith(_$GetUserSessionInputImpl value,
          $Res Function(_$GetUserSessionInputImpl) then) =
      __$$GetUserSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserSessionRequestEntity? authRequest});
}

/// @nodoc
class __$$GetUserSessionInputImplCopyWithImpl<$Res>
    extends _$GetUserSessionInputCopyWithImpl<$Res, _$GetUserSessionInputImpl>
    implements _$$GetUserSessionInputImplCopyWith<$Res> {
  __$$GetUserSessionInputImplCopyWithImpl(_$GetUserSessionInputImpl _value,
      $Res Function(_$GetUserSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_$GetUserSessionInputImpl(
      authRequest: freezed == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as UserSessionRequestEntity?,
    ));
  }
}

/// @nodoc

class _$GetUserSessionInputImpl implements _GetUserSessionInput {
  const _$GetUserSessionInputImpl({this.authRequest});

  @override
  final UserSessionRequestEntity? authRequest;

  @override
  String toString() {
    return 'GetUserSessionInput(authRequest: $authRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserSessionInputImpl &&
            (identical(other.authRequest, authRequest) ||
                other.authRequest == authRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authRequest);

  /// Create a copy of GetUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetUserSessionInputImplCopyWith<_$GetUserSessionInputImpl> get copyWith =>
      __$$GetUserSessionInputImplCopyWithImpl<_$GetUserSessionInputImpl>(
          this, _$identity);
}

abstract class _GetUserSessionInput implements GetUserSessionInput {
  const factory _GetUserSessionInput(
          {final UserSessionRequestEntity? authRequest}) =
      _$GetUserSessionInputImpl;

  @override
  UserSessionRequestEntity? get authRequest;

  /// Create a copy of GetUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetUserSessionInputImplCopyWith<_$GetUserSessionInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RefreshUserSessionInput {
  RefreshUserSessionRequestEntity? get refreshRequest =>
      throw _privateConstructorUsedError;

  /// Create a copy of RefreshUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RefreshUserSessionInputCopyWith<RefreshUserSessionInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RefreshUserSessionInputCopyWith<$Res> {
  factory $RefreshUserSessionInputCopyWith(RefreshUserSessionInput value,
          $Res Function(RefreshUserSessionInput) then) =
      _$RefreshUserSessionInputCopyWithImpl<$Res, RefreshUserSessionInput>;
  @useResult
  $Res call({RefreshUserSessionRequestEntity? refreshRequest});
}

/// @nodoc
class _$RefreshUserSessionInputCopyWithImpl<$Res,
        $Val extends RefreshUserSessionInput>
    implements $RefreshUserSessionInputCopyWith<$Res> {
  _$RefreshUserSessionInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RefreshUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshRequest = freezed,
  }) {
    return _then(_value.copyWith(
      refreshRequest: freezed == refreshRequest
          ? _value.refreshRequest
          : refreshRequest // ignore: cast_nullable_to_non_nullable
              as RefreshUserSessionRequestEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RefreshUserSessionInputImplCopyWith<$Res>
    implements $RefreshUserSessionInputCopyWith<$Res> {
  factory _$$RefreshUserSessionInputImplCopyWith(
          _$RefreshUserSessionInputImpl value,
          $Res Function(_$RefreshUserSessionInputImpl) then) =
      __$$RefreshUserSessionInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RefreshUserSessionRequestEntity? refreshRequest});
}

/// @nodoc
class __$$RefreshUserSessionInputImplCopyWithImpl<$Res>
    extends _$RefreshUserSessionInputCopyWithImpl<$Res,
        _$RefreshUserSessionInputImpl>
    implements _$$RefreshUserSessionInputImplCopyWith<$Res> {
  __$$RefreshUserSessionInputImplCopyWithImpl(
      _$RefreshUserSessionInputImpl _value,
      $Res Function(_$RefreshUserSessionInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of RefreshUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshRequest = freezed,
  }) {
    return _then(_$RefreshUserSessionInputImpl(
      refreshRequest: freezed == refreshRequest
          ? _value.refreshRequest
          : refreshRequest // ignore: cast_nullable_to_non_nullable
              as RefreshUserSessionRequestEntity?,
    ));
  }
}

/// @nodoc

class _$RefreshUserSessionInputImpl implements _RefreshUserSessionInput {
  const _$RefreshUserSessionInputImpl({this.refreshRequest});

  @override
  final RefreshUserSessionRequestEntity? refreshRequest;

  @override
  String toString() {
    return 'RefreshUserSessionInput(refreshRequest: $refreshRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshUserSessionInputImpl &&
            (identical(other.refreshRequest, refreshRequest) ||
                other.refreshRequest == refreshRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, refreshRequest);

  /// Create a copy of RefreshUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshUserSessionInputImplCopyWith<_$RefreshUserSessionInputImpl>
      get copyWith => __$$RefreshUserSessionInputImplCopyWithImpl<
          _$RefreshUserSessionInputImpl>(this, _$identity);
}

abstract class _RefreshUserSessionInput implements RefreshUserSessionInput {
  const factory _RefreshUserSessionInput(
          {final RefreshUserSessionRequestEntity? refreshRequest}) =
      _$RefreshUserSessionInputImpl;

  @override
  RefreshUserSessionRequestEntity? get refreshRequest;

  /// Create a copy of RefreshUserSessionInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RefreshUserSessionInputImplCopyWith<_$RefreshUserSessionInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetLocalAuthTokenInput {
  UserSessionResponseEntity? get authRequest =>
      throw _privateConstructorUsedError;

  /// Create a copy of SetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SetLocalAuthTokenInputCopyWith<SetLocalAuthTokenInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetLocalAuthTokenInputCopyWith<$Res> {
  factory $SetLocalAuthTokenInputCopyWith(SetLocalAuthTokenInput value,
          $Res Function(SetLocalAuthTokenInput) then) =
      _$SetLocalAuthTokenInputCopyWithImpl<$Res, SetLocalAuthTokenInput>;
  @useResult
  $Res call({UserSessionResponseEntity? authRequest});
}

/// @nodoc
class _$SetLocalAuthTokenInputCopyWithImpl<$Res,
        $Val extends SetLocalAuthTokenInput>
    implements $SetLocalAuthTokenInputCopyWith<$Res> {
  _$SetLocalAuthTokenInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_value.copyWith(
      authRequest: freezed == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetLocalAuthTokenInputImplCopyWith<$Res>
    implements $SetLocalAuthTokenInputCopyWith<$Res> {
  factory _$$SetLocalAuthTokenInputImplCopyWith(
          _$SetLocalAuthTokenInputImpl value,
          $Res Function(_$SetLocalAuthTokenInputImpl) then) =
      __$$SetLocalAuthTokenInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserSessionResponseEntity? authRequest});
}

/// @nodoc
class __$$SetLocalAuthTokenInputImplCopyWithImpl<$Res>
    extends _$SetLocalAuthTokenInputCopyWithImpl<$Res,
        _$SetLocalAuthTokenInputImpl>
    implements _$$SetLocalAuthTokenInputImplCopyWith<$Res> {
  __$$SetLocalAuthTokenInputImplCopyWithImpl(
      _$SetLocalAuthTokenInputImpl _value,
      $Res Function(_$SetLocalAuthTokenInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of SetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authRequest = freezed,
  }) {
    return _then(_$SetLocalAuthTokenInputImpl(
      authRequest: freezed == authRequest
          ? _value.authRequest
          : authRequest // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
    ));
  }
}

/// @nodoc

class _$SetLocalAuthTokenInputImpl implements _SetLocalAuthTokenInput {
  const _$SetLocalAuthTokenInputImpl({this.authRequest});

  @override
  final UserSessionResponseEntity? authRequest;

  @override
  String toString() {
    return 'SetLocalAuthTokenInput(authRequest: $authRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetLocalAuthTokenInputImpl &&
            (identical(other.authRequest, authRequest) ||
                other.authRequest == authRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authRequest);

  /// Create a copy of SetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetLocalAuthTokenInputImplCopyWith<_$SetLocalAuthTokenInputImpl>
      get copyWith => __$$SetLocalAuthTokenInputImplCopyWithImpl<
          _$SetLocalAuthTokenInputImpl>(this, _$identity);
}

abstract class _SetLocalAuthTokenInput implements SetLocalAuthTokenInput {
  const factory _SetLocalAuthTokenInput(
          {final UserSessionResponseEntity? authRequest}) =
      _$SetLocalAuthTokenInputImpl;

  @override
  UserSessionResponseEntity? get authRequest;

  /// Create a copy of SetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetLocalAuthTokenInputImplCopyWith<_$SetLocalAuthTokenInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetLocalAuthTokenInput {}

/// @nodoc
abstract class $GetLocalAuthTokenInputCopyWith<$Res> {
  factory $GetLocalAuthTokenInputCopyWith(GetLocalAuthTokenInput value,
          $Res Function(GetLocalAuthTokenInput) then) =
      _$GetLocalAuthTokenInputCopyWithImpl<$Res, GetLocalAuthTokenInput>;
}

/// @nodoc
class _$GetLocalAuthTokenInputCopyWithImpl<$Res,
        $Val extends GetLocalAuthTokenInput>
    implements $GetLocalAuthTokenInputCopyWith<$Res> {
  _$GetLocalAuthTokenInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetLocalAuthTokenInputImplCopyWith<$Res> {
  factory _$$GetLocalAuthTokenInputImplCopyWith(
          _$GetLocalAuthTokenInputImpl value,
          $Res Function(_$GetLocalAuthTokenInputImpl) then) =
      __$$GetLocalAuthTokenInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetLocalAuthTokenInputImplCopyWithImpl<$Res>
    extends _$GetLocalAuthTokenInputCopyWithImpl<$Res,
        _$GetLocalAuthTokenInputImpl>
    implements _$$GetLocalAuthTokenInputImplCopyWith<$Res> {
  __$$GetLocalAuthTokenInputImplCopyWithImpl(
      _$GetLocalAuthTokenInputImpl _value,
      $Res Function(_$GetLocalAuthTokenInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetLocalAuthTokenInputImpl implements _GetLocalAuthTokenInput {
  const _$GetLocalAuthTokenInputImpl();

  @override
  String toString() {
    return 'GetLocalAuthTokenInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetLocalAuthTokenInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _GetLocalAuthTokenInput implements GetLocalAuthTokenInput {
  const factory _GetLocalAuthTokenInput() = _$GetLocalAuthTokenInputImpl;
}

/// @nodoc
mixin _$ClearLocalAuthTokenInput {}

/// @nodoc
abstract class $ClearLocalAuthTokenInputCopyWith<$Res> {
  factory $ClearLocalAuthTokenInputCopyWith(ClearLocalAuthTokenInput value,
          $Res Function(ClearLocalAuthTokenInput) then) =
      _$ClearLocalAuthTokenInputCopyWithImpl<$Res, ClearLocalAuthTokenInput>;
}

/// @nodoc
class _$ClearLocalAuthTokenInputCopyWithImpl<$Res,
        $Val extends ClearLocalAuthTokenInput>
    implements $ClearLocalAuthTokenInputCopyWith<$Res> {
  _$ClearLocalAuthTokenInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClearLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ClearLocalAuthTokenInputImplCopyWith<$Res> {
  factory _$$ClearLocalAuthTokenInputImplCopyWith(
          _$ClearLocalAuthTokenInputImpl value,
          $Res Function(_$ClearLocalAuthTokenInputImpl) then) =
      __$$ClearLocalAuthTokenInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLocalAuthTokenInputImplCopyWithImpl<$Res>
    extends _$ClearLocalAuthTokenInputCopyWithImpl<$Res,
        _$ClearLocalAuthTokenInputImpl>
    implements _$$ClearLocalAuthTokenInputImplCopyWith<$Res> {
  __$$ClearLocalAuthTokenInputImplCopyWithImpl(
      _$ClearLocalAuthTokenInputImpl _value,
      $Res Function(_$ClearLocalAuthTokenInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClearLocalAuthTokenInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearLocalAuthTokenInputImpl implements _ClearLocalAuthTokenInput {
  const _$ClearLocalAuthTokenInputImpl();

  @override
  String toString() {
    return 'ClearLocalAuthTokenInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLocalAuthTokenInputImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class _ClearLocalAuthTokenInput implements ClearLocalAuthTokenInput {
  const factory _ClearLocalAuthTokenInput() = _$ClearLocalAuthTokenInputImpl;
}

/// @nodoc
mixin _$AuthUseCaseOutput {
  UserSessionResponseEntity? get sessionResult =>
      throw _privateConstructorUsedError;
  RefreshUserSessionResponseEntity? get refreshResult =>
      throw _privateConstructorUsedError;
  UserSessionResponseEntity? get localSession =>
      throw _privateConstructorUsedError;

  /// Create a copy of AuthUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthUseCaseOutputCopyWith<AuthUseCaseOutput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthUseCaseOutputCopyWith<$Res> {
  factory $AuthUseCaseOutputCopyWith(
          AuthUseCaseOutput value, $Res Function(AuthUseCaseOutput) then) =
      _$AuthUseCaseOutputCopyWithImpl<$Res, AuthUseCaseOutput>;
  @useResult
  $Res call(
      {UserSessionResponseEntity? sessionResult,
      RefreshUserSessionResponseEntity? refreshResult,
      UserSessionResponseEntity? localSession});
}

/// @nodoc
class _$AuthUseCaseOutputCopyWithImpl<$Res, $Val extends AuthUseCaseOutput>
    implements $AuthUseCaseOutputCopyWith<$Res> {
  _$AuthUseCaseOutputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionResult = freezed,
    Object? refreshResult = freezed,
    Object? localSession = freezed,
  }) {
    return _then(_value.copyWith(
      sessionResult: freezed == sessionResult
          ? _value.sessionResult
          : sessionResult // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
      refreshResult: freezed == refreshResult
          ? _value.refreshResult
          : refreshResult // ignore: cast_nullable_to_non_nullable
              as RefreshUserSessionResponseEntity?,
      localSession: freezed == localSession
          ? _value.localSession
          : localSession // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthUseCaseOutputImplCopyWith<$Res>
    implements $AuthUseCaseOutputCopyWith<$Res> {
  factory _$$AuthUseCaseOutputImplCopyWith(_$AuthUseCaseOutputImpl value,
          $Res Function(_$AuthUseCaseOutputImpl) then) =
      __$$AuthUseCaseOutputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserSessionResponseEntity? sessionResult,
      RefreshUserSessionResponseEntity? refreshResult,
      UserSessionResponseEntity? localSession});
}

/// @nodoc
class __$$AuthUseCaseOutputImplCopyWithImpl<$Res>
    extends _$AuthUseCaseOutputCopyWithImpl<$Res, _$AuthUseCaseOutputImpl>
    implements _$$AuthUseCaseOutputImplCopyWith<$Res> {
  __$$AuthUseCaseOutputImplCopyWithImpl(_$AuthUseCaseOutputImpl _value,
      $Res Function(_$AuthUseCaseOutputImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionResult = freezed,
    Object? refreshResult = freezed,
    Object? localSession = freezed,
  }) {
    return _then(_$AuthUseCaseOutputImpl(
      sessionResult: freezed == sessionResult
          ? _value.sessionResult
          : sessionResult // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
      refreshResult: freezed == refreshResult
          ? _value.refreshResult
          : refreshResult // ignore: cast_nullable_to_non_nullable
              as RefreshUserSessionResponseEntity?,
      localSession: freezed == localSession
          ? _value.localSession
          : localSession // ignore: cast_nullable_to_non_nullable
              as UserSessionResponseEntity?,
    ));
  }
}

/// @nodoc

class _$AuthUseCaseOutputImpl implements _AuthUseCaseOutput {
  const _$AuthUseCaseOutputImpl(
      {this.sessionResult, this.refreshResult, this.localSession});

  @override
  final UserSessionResponseEntity? sessionResult;
  @override
  final RefreshUserSessionResponseEntity? refreshResult;
  @override
  final UserSessionResponseEntity? localSession;

  @override
  String toString() {
    return 'AuthUseCaseOutput(sessionResult: $sessionResult, refreshResult: $refreshResult, localSession: $localSession)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthUseCaseOutputImpl &&
            (identical(other.sessionResult, sessionResult) ||
                other.sessionResult == sessionResult) &&
            (identical(other.refreshResult, refreshResult) ||
                other.refreshResult == refreshResult) &&
            (identical(other.localSession, localSession) ||
                other.localSession == localSession));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, sessionResult, refreshResult, localSession);

  /// Create a copy of AuthUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthUseCaseOutputImplCopyWith<_$AuthUseCaseOutputImpl> get copyWith =>
      __$$AuthUseCaseOutputImplCopyWithImpl<_$AuthUseCaseOutputImpl>(
          this, _$identity);
}

abstract class _AuthUseCaseOutput implements AuthUseCaseOutput {
  const factory _AuthUseCaseOutput(
      {final UserSessionResponseEntity? sessionResult,
      final RefreshUserSessionResponseEntity? refreshResult,
      final UserSessionResponseEntity? localSession}) = _$AuthUseCaseOutputImpl;

  @override
  UserSessionResponseEntity? get sessionResult;
  @override
  RefreshUserSessionResponseEntity? get refreshResult;
  @override
  UserSessionResponseEntity? get localSession;

  /// Create a copy of AuthUseCaseOutput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthUseCaseOutputImplCopyWith<_$AuthUseCaseOutputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
