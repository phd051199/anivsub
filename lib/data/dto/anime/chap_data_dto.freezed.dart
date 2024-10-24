// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chap_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChapDataDTO _$ChapDataDTOFromJson(Map<String, dynamic> json) {
  return _ChapDataDTO.fromJson(json);
}

/// @nodoc
mixin _$ChapDataDTO {
  String get id => throw _privateConstructorUsedError;
  String get play => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this ChapDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapDataDTOCopyWith<ChapDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapDataDTOCopyWith<$Res> {
  factory $ChapDataDTOCopyWith(
          ChapDataDTO value, $Res Function(ChapDataDTO) then) =
      _$ChapDataDTOCopyWithImpl<$Res, ChapDataDTO>;
  @useResult
  $Res call({String id, String play, String hash, String name});
}

/// @nodoc
class _$ChapDataDTOCopyWithImpl<$Res, $Val extends ChapDataDTO>
    implements $ChapDataDTOCopyWith<$Res> {
  _$ChapDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? hash = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapDataDTOImplCopyWith<$Res>
    implements $ChapDataDTOCopyWith<$Res> {
  factory _$$ChapDataDTOImplCopyWith(
          _$ChapDataDTOImpl value, $Res Function(_$ChapDataDTOImpl) then) =
      __$$ChapDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String play, String hash, String name});
}

/// @nodoc
class __$$ChapDataDTOImplCopyWithImpl<$Res>
    extends _$ChapDataDTOCopyWithImpl<$Res, _$ChapDataDTOImpl>
    implements _$$ChapDataDTOImplCopyWith<$Res> {
  __$$ChapDataDTOImplCopyWithImpl(
      _$ChapDataDTOImpl _value, $Res Function(_$ChapDataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? hash = null,
    Object? name = null,
  }) {
    return _then(_$ChapDataDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapDataDTOImpl extends _ChapDataDTO {
  const _$ChapDataDTOImpl(
      {required this.id,
      required this.play,
      required this.hash,
      required this.name})
      : super._();

  factory _$ChapDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapDataDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String play;
  @override
  final String hash;
  @override
  final String name;

  /// Create a copy of ChapDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapDataDTOImplCopyWith<_$ChapDataDTOImpl> get copyWith =>
      __$$ChapDataDTOImplCopyWithImpl<_$ChapDataDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapDataDTOImplToJson(
      this,
    );
  }
}

abstract class _ChapDataDTO extends ChapDataDTO {
  const factory _ChapDataDTO(
      {required final String id,
      required final String play,
      required final String hash,
      required final String name}) = _$ChapDataDTOImpl;
  const _ChapDataDTO._() : super._();

  factory _ChapDataDTO.fromJson(Map<String, dynamic> json) =
      _$ChapDataDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get play;
  @override
  String get hash;
  @override
  String get name;

  /// Create a copy of ChapDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapDataDTOImplCopyWith<_$ChapDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
