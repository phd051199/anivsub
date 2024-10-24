// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_encrypted_hls_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEncryptedHlsRequestDTO _$GetEncryptedHlsRequestDTOFromJson(
    Map<String, dynamic> json) {
  return _GetEncryptedHlsRequestDTO.fromJson(json);
}

/// @nodoc
mixin _$GetEncryptedHlsRequestDTO {
  String get id => throw _privateConstructorUsedError;
  String get play => throw _privateConstructorUsedError;
  String get link => throw _privateConstructorUsedError;
  String get backuplinks => throw _privateConstructorUsedError;

  /// Serializes this GetEncryptedHlsRequestDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEncryptedHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEncryptedHlsRequestDTOCopyWith<GetEncryptedHlsRequestDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEncryptedHlsRequestDTOCopyWith<$Res> {
  factory $GetEncryptedHlsRequestDTOCopyWith(GetEncryptedHlsRequestDTO value,
          $Res Function(GetEncryptedHlsRequestDTO) then) =
      _$GetEncryptedHlsRequestDTOCopyWithImpl<$Res, GetEncryptedHlsRequestDTO>;
  @useResult
  $Res call({String id, String play, String link, String backuplinks});
}

/// @nodoc
class _$GetEncryptedHlsRequestDTOCopyWithImpl<$Res,
        $Val extends GetEncryptedHlsRequestDTO>
    implements $GetEncryptedHlsRequestDTOCopyWith<$Res> {
  _$GetEncryptedHlsRequestDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEncryptedHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? link = null,
    Object? backuplinks = null,
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
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      backuplinks: null == backuplinks
          ? _value.backuplinks
          : backuplinks // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEncryptedHlsRequestDTOImplCopyWith<$Res>
    implements $GetEncryptedHlsRequestDTOCopyWith<$Res> {
  factory _$$GetEncryptedHlsRequestDTOImplCopyWith(
          _$GetEncryptedHlsRequestDTOImpl value,
          $Res Function(_$GetEncryptedHlsRequestDTOImpl) then) =
      __$$GetEncryptedHlsRequestDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String play, String link, String backuplinks});
}

/// @nodoc
class __$$GetEncryptedHlsRequestDTOImplCopyWithImpl<$Res>
    extends _$GetEncryptedHlsRequestDTOCopyWithImpl<$Res,
        _$GetEncryptedHlsRequestDTOImpl>
    implements _$$GetEncryptedHlsRequestDTOImplCopyWith<$Res> {
  __$$GetEncryptedHlsRequestDTOImplCopyWithImpl(
      _$GetEncryptedHlsRequestDTOImpl _value,
      $Res Function(_$GetEncryptedHlsRequestDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEncryptedHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? play = null,
    Object? link = null,
    Object? backuplinks = null,
  }) {
    return _then(_$GetEncryptedHlsRequestDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      play: null == play
          ? _value.play
          : play // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      backuplinks: null == backuplinks
          ? _value.backuplinks
          : backuplinks // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEncryptedHlsRequestDTOImpl extends _GetEncryptedHlsRequestDTO {
  const _$GetEncryptedHlsRequestDTOImpl(
      {required this.id,
      required this.play,
      required this.link,
      required this.backuplinks})
      : super._();

  factory _$GetEncryptedHlsRequestDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetEncryptedHlsRequestDTOImplFromJson(json);

  @override
  final String id;
  @override
  final String play;
  @override
  final String link;
  @override
  final String backuplinks;

  /// Create a copy of GetEncryptedHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEncryptedHlsRequestDTOImplCopyWith<_$GetEncryptedHlsRequestDTOImpl>
      get copyWith => __$$GetEncryptedHlsRequestDTOImplCopyWithImpl<
          _$GetEncryptedHlsRequestDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEncryptedHlsRequestDTOImplToJson(
      this,
    );
  }
}

abstract class _GetEncryptedHlsRequestDTO extends GetEncryptedHlsRequestDTO {
  const factory _GetEncryptedHlsRequestDTO(
      {required final String id,
      required final String play,
      required final String link,
      required final String backuplinks}) = _$GetEncryptedHlsRequestDTOImpl;
  const _GetEncryptedHlsRequestDTO._() : super._();

  factory _GetEncryptedHlsRequestDTO.fromJson(Map<String, dynamic> json) =
      _$GetEncryptedHlsRequestDTOImpl.fromJson;

  @override
  String get id;
  @override
  String get play;
  @override
  String get link;
  @override
  String get backuplinks;

  /// Create a copy of GetEncryptedHlsRequestDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEncryptedHlsRequestDTOImplCopyWith<_$GetEncryptedHlsRequestDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
