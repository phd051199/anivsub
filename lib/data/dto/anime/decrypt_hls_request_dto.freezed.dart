// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decrypt_hls_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecryptHlsRequestDTO _$DecryptHlsRequestDTOFromJson(Map<String, dynamic> json) {
  return _DecryptHlsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$DecryptHlsRequestDTO {
  String get hash => throw _privateConstructorUsedError;

  /// Serializes this DecryptHlsRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecryptHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecryptHlsRequestDTOCopyWith<DecryptHlsRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecryptHlsRequestDTOCopyWith<$Res> {
  factory $DecryptHlsRequestDTOCopyWith(DecryptHlsRequestDTO value,
          $Res Function(DecryptHlsRequestDTO) then) =
      _$DecryptHlsRequestDTOCopyWithImpl<$Res, DecryptHlsRequestDTO>;
  @useResult
  $Res call({String hash});
}

/// @nodoc
class _$DecryptHlsRequestDTOCopyWithImpl<$Res,
        $Val extends DecryptHlsRequestDTO>
    implements $DecryptHlsRequestDTOCopyWith<$Res> {
  _$DecryptHlsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DecryptHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecryptHlsRequestDTOImplCopyWith<$Res>
    implements $DecryptHlsRequestDTOCopyWith<$Res> {
  factory _$$DecryptHlsRequestDTOImplCopyWith(_$DecryptHlsRequestDTOImpl value,
          $Res Function(_$DecryptHlsRequestDTOImpl) then) =
      __$$DecryptHlsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String hash});
}

/// @nodoc
class __$$DecryptHlsRequestDTOImplCopyWithImpl<$Res>
    extends _$DecryptHlsRequestDTOCopyWithImpl<$Res, _$DecryptHlsRequestDTOImpl>
    implements _$$DecryptHlsRequestDTOImplCopyWith<$Res> {
  __$$DecryptHlsRequestDTOImplCopyWithImpl(_$DecryptHlsRequestDTOImpl _value,
      $Res Function(_$DecryptHlsRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecryptHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hash = null,
  }) {
    return _then(_$DecryptHlsRequestDTOImpl(
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecryptHlsRequestDTOImpl extends _DecryptHlsRequestDTO {
  const _$DecryptHlsRequestDTOImpl({required this.hash}) : super._();

  factory _$DecryptHlsRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecryptHlsRequestDTOImplFromJson(json);

  @override
  final String hash;

  @override
  String toString() {
    return 'DecryptHlsRequestDTO(hash: $hash)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecryptHlsRequestDTOImpl &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, hash);

  /// Create a copy of DecryptHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecryptHlsRequestDTOImplCopyWith<_$DecryptHlsRequestDTOImpl>
      get copyWith =>
          __$$DecryptHlsRequestDTOImplCopyWithImpl<_$DecryptHlsRequestDTOImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecryptHlsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _DecryptHlsRequestDTO extends DecryptHlsRequestDTO {
  const factory _DecryptHlsRequestDTO({required final String hash}) =
      _$DecryptHlsRequestDTOImpl;
  const _DecryptHlsRequestDTO._() : super._();

  factory _DecryptHlsRequestDTO.fromJson(Map<String, dynamic> json) =
      _$DecryptHlsRequestDTOImpl.fromJson;

  @override
  String get hash;

  /// Create a copy of DecryptHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecryptHlsRequestDTOImplCopyWith<_$DecryptHlsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
