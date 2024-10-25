// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pre_search_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PreSearchItemDTO _$PreSearchItemDTOFromJson(Map<String, dynamic> json) {
  return _PreSearchItemDTO.fromJson(json);
}

/// @nodoc
mixin _$PreSearchItemDTO {
  String get image => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  /// Serializes this PreSearchItemDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PreSearchItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PreSearchItemDTOCopyWith<PreSearchItemDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PreSearchItemDTOCopyWith<$Res> {
  factory $PreSearchItemDTOCopyWith(
          PreSearchItemDTO value, $Res Function(PreSearchItemDTO) then) =
      _$PreSearchItemDTOCopyWithImpl<$Res, PreSearchItemDTO>;
  @useResult
  $Res call({String image, String path, String name, String status});
}

/// @nodoc
class _$PreSearchItemDTOCopyWithImpl<$Res, $Val extends PreSearchItemDTO>
    implements $PreSearchItemDTOCopyWith<$Res> {
  _$PreSearchItemDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PreSearchItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? path = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PreSearchItemDTOImplCopyWith<$Res>
    implements $PreSearchItemDTOCopyWith<$Res> {
  factory _$$PreSearchItemDTOImplCopyWith(_$PreSearchItemDTOImpl value,
          $Res Function(_$PreSearchItemDTOImpl) then) =
      __$$PreSearchItemDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String image, String path, String name, String status});
}

/// @nodoc
class __$$PreSearchItemDTOImplCopyWithImpl<$Res>
    extends _$PreSearchItemDTOCopyWithImpl<$Res, _$PreSearchItemDTOImpl>
    implements _$$PreSearchItemDTOImplCopyWith<$Res> {
  __$$PreSearchItemDTOImplCopyWithImpl(_$PreSearchItemDTOImpl _value,
      $Res Function(_$PreSearchItemDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PreSearchItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? path = null,
    Object? name = null,
    Object? status = null,
  }) {
    return _then(_$PreSearchItemDTOImpl(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PreSearchItemDTOImpl extends _PreSearchItemDTO {
  const _$PreSearchItemDTOImpl(
      {required this.image,
      required this.path,
      required this.name,
      required this.status})
      : super._();

  factory _$PreSearchItemDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PreSearchItemDTOImplFromJson(json);

  @override
  final String image;
  @override
  final String path;
  @override
  final String name;
  @override
  final String status;

  /// Create a copy of PreSearchItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PreSearchItemDTOImplCopyWith<_$PreSearchItemDTOImpl> get copyWith =>
      __$$PreSearchItemDTOImplCopyWithImpl<_$PreSearchItemDTOImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PreSearchItemDTOImplToJson(
      this,
    );
  }
}

abstract class _PreSearchItemDTO extends PreSearchItemDTO {
  const factory _PreSearchItemDTO(
      {required final String image,
      required final String path,
      required final String name,
      required final String status}) = _$PreSearchItemDTOImpl;
  const _PreSearchItemDTO._() : super._();

  factory _PreSearchItemDTO.fromJson(Map<String, dynamic> json) =
      _$PreSearchItemDTOImpl.fromJson;

  @override
  String get image;
  @override
  String get path;
  @override
  String get name;
  @override
  String get status;

  /// Create a copy of PreSearchItemDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PreSearchItemDTOImplCopyWith<_$PreSearchItemDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
