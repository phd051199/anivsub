// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'play_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayDataDTO _$PlayDataDTOFromJson(Map<String, dynamic> json) {
  return _PlayDataDTO.fromJson(json);
}

/// @nodoc
mixin _$PlayDataDTO {
  List<ChapDataDTO> get chaps => throw _privateConstructorUsedError;
  List<int>? get update => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get poster => throw _privateConstructorUsedError;

  /// Serializes this PlayDataDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayDataDTOCopyWith<PlayDataDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayDataDTOCopyWith<$Res> {
  factory $PlayDataDTOCopyWith(
          PlayDataDTO value, $Res Function(PlayDataDTO) then) =
      _$PlayDataDTOCopyWithImpl<$Res, PlayDataDTO>;
  @useResult
  $Res call(
      {List<ChapDataDTO> chaps,
      List<int>? update,
      String image,
      String poster});
}

/// @nodoc
class _$PlayDataDTOCopyWithImpl<$Res, $Val extends PlayDataDTO>
    implements $PlayDataDTOCopyWith<$Res> {
  _$PlayDataDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chaps = null,
    Object? update = freezed,
    Object? image = null,
    Object? poster = null,
  }) {
    return _then(_value.copyWith(
      chaps: null == chaps
          ? _value.chaps
          : chaps // ignore: cast_nullable_to_non_nullable
              as List<ChapDataDTO>,
      update: freezed == update
          ? _value.update
          : update // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayDataDTOImplCopyWith<$Res>
    implements $PlayDataDTOCopyWith<$Res> {
  factory _$$PlayDataDTOImplCopyWith(
          _$PlayDataDTOImpl value, $Res Function(_$PlayDataDTOImpl) then) =
      __$$PlayDataDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChapDataDTO> chaps,
      List<int>? update,
      String image,
      String poster});
}

/// @nodoc
class __$$PlayDataDTOImplCopyWithImpl<$Res>
    extends _$PlayDataDTOCopyWithImpl<$Res, _$PlayDataDTOImpl>
    implements _$$PlayDataDTOImplCopyWith<$Res> {
  __$$PlayDataDTOImplCopyWithImpl(
      _$PlayDataDTOImpl _value, $Res Function(_$PlayDataDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chaps = null,
    Object? update = freezed,
    Object? image = null,
    Object? poster = null,
  }) {
    return _then(_$PlayDataDTOImpl(
      chaps: null == chaps
          ? _value._chaps
          : chaps // ignore: cast_nullable_to_non_nullable
              as List<ChapDataDTO>,
      update: freezed == update
          ? _value._update
          : update // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      poster: null == poster
          ? _value.poster
          : poster // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayDataDTOImpl extends _PlayDataDTO {
  const _$PlayDataDTOImpl(
      {required final List<ChapDataDTO> chaps,
      final List<int>? update,
      required this.image,
      required this.poster})
      : _chaps = chaps,
        _update = update,
        super._();

  factory _$PlayDataDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayDataDTOImplFromJson(json);

  final List<ChapDataDTO> _chaps;
  @override
  List<ChapDataDTO> get chaps {
    if (_chaps is EqualUnmodifiableListView) return _chaps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chaps);
  }

  final List<int>? _update;
  @override
  List<int>? get update {
    final value = _update;
    if (value == null) return null;
    if (_update is EqualUnmodifiableListView) return _update;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String image;
  @override
  final String poster;

  /// Create a copy of PlayDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayDataDTOImplCopyWith<_$PlayDataDTOImpl> get copyWith =>
      __$$PlayDataDTOImplCopyWithImpl<_$PlayDataDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayDataDTOImplToJson(
      this,
    );
  }
}

abstract class _PlayDataDTO extends PlayDataDTO {
  const factory _PlayDataDTO(
      {required final List<ChapDataDTO> chaps,
      final List<int>? update,
      required final String image,
      required final String poster}) = _$PlayDataDTOImpl;
  const _PlayDataDTO._() : super._();

  factory _PlayDataDTO.fromJson(Map<String, dynamic> json) =
      _$PlayDataDTOImpl.fromJson;

  @override
  List<ChapDataDTO> get chaps;
  @override
  List<int>? get update;
  @override
  String get image;
  @override
  String get poster;

  /// Create a copy of PlayDataDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayDataDTOImplCopyWith<_$PlayDataDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
