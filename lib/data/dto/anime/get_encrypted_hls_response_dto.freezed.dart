// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_encrypted_hls_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetEncryptedHlsResponseDTO _$GetEncryptedHlsResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _GetEncryptedHlsResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$GetEncryptedHlsResponseDTO {
  int get success => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  List<Link> get link => throw _privateConstructorUsedError;
  String get playTech => throw _privateConstructorUsedError;

  /// Serializes this GetEncryptedHlsResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GetEncryptedHlsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GetEncryptedHlsResponseDTOCopyWith<GetEncryptedHlsResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetEncryptedHlsResponseDTOCopyWith<$Res> {
  factory $GetEncryptedHlsResponseDTOCopyWith(GetEncryptedHlsResponseDTO value,
          $Res Function(GetEncryptedHlsResponseDTO) then) =
      _$GetEncryptedHlsResponseDTOCopyWithImpl<$Res,
          GetEncryptedHlsResponseDTO>;
  @useResult
  $Res call({int success, String title, List<Link> link, String playTech});
}

/// @nodoc
class _$GetEncryptedHlsResponseDTOCopyWithImpl<$Res,
        $Val extends GetEncryptedHlsResponseDTO>
    implements $GetEncryptedHlsResponseDTOCopyWith<$Res> {
  _$GetEncryptedHlsResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GetEncryptedHlsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? title = null,
    Object? link = null,
    Object? playTech = null,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      playTech: null == playTech
          ? _value.playTech
          : playTech // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetEncryptedHlsResponseDTOImplCopyWith<$Res>
    implements $GetEncryptedHlsResponseDTOCopyWith<$Res> {
  factory _$$GetEncryptedHlsResponseDTOImplCopyWith(
          _$GetEncryptedHlsResponseDTOImpl value,
          $Res Function(_$GetEncryptedHlsResponseDTOImpl) then) =
      __$$GetEncryptedHlsResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int success, String title, List<Link> link, String playTech});
}

/// @nodoc
class __$$GetEncryptedHlsResponseDTOImplCopyWithImpl<$Res>
    extends _$GetEncryptedHlsResponseDTOCopyWithImpl<$Res,
        _$GetEncryptedHlsResponseDTOImpl>
    implements _$$GetEncryptedHlsResponseDTOImplCopyWith<$Res> {
  __$$GetEncryptedHlsResponseDTOImplCopyWithImpl(
      _$GetEncryptedHlsResponseDTOImpl _value,
      $Res Function(_$GetEncryptedHlsResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of GetEncryptedHlsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? title = null,
    Object? link = null,
    Object? playTech = null,
  }) {
    return _then(_$GetEncryptedHlsResponseDTOImpl(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _value._link
          : link // ignore: cast_nullable_to_non_nullable
              as List<Link>,
      playTech: null == playTech
          ? _value.playTech
          : playTech // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetEncryptedHlsResponseDTOImpl extends _GetEncryptedHlsResponseDTO {
  const _$GetEncryptedHlsResponseDTOImpl(
      {required this.success,
      required this.title,
      required final List<Link> link,
      required this.playTech})
      : _link = link,
        super._();

  factory _$GetEncryptedHlsResponseDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$GetEncryptedHlsResponseDTOImplFromJson(json);

  @override
  final int success;
  @override
  final String title;
  final List<Link> _link;
  @override
  List<Link> get link {
    if (_link is EqualUnmodifiableListView) return _link;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_link);
  }

  @override
  final String playTech;

  /// Create a copy of GetEncryptedHlsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetEncryptedHlsResponseDTOImplCopyWith<_$GetEncryptedHlsResponseDTOImpl>
      get copyWith => __$$GetEncryptedHlsResponseDTOImplCopyWithImpl<
          _$GetEncryptedHlsResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetEncryptedHlsResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _GetEncryptedHlsResponseDTO extends GetEncryptedHlsResponseDTO {
  const factory _GetEncryptedHlsResponseDTO(
      {required final int success,
      required final String title,
      required final List<Link> link,
      required final String playTech}) = _$GetEncryptedHlsResponseDTOImpl;
  const _GetEncryptedHlsResponseDTO._() : super._();

  factory _GetEncryptedHlsResponseDTO.fromJson(Map<String, dynamic> json) =
      _$GetEncryptedHlsResponseDTOImpl.fromJson;

  @override
  int get success;
  @override
  String get title;
  @override
  List<Link> get link;
  @override
  String get playTech;

  /// Create a copy of GetEncryptedHlsResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetEncryptedHlsResponseDTOImplCopyWith<_$GetEncryptedHlsResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
