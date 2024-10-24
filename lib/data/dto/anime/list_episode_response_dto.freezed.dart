// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_episode_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Episode _$EpisodeFromJson(Map<String, dynamic> json) {
  return _Episode.fromJson(json);
}

/// @nodoc
mixin _$Episode {
  String get id => throw _privateConstructorUsedError;
  String get order => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Serializes this Episode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeCopyWith<Episode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeCopyWith<$Res> {
  factory $EpisodeCopyWith(Episode value, $Res Function(Episode) then) =
      _$EpisodeCopyWithImpl<$Res, Episode>;
  @useResult
  $Res call({String id, String order, String name, String title});
}

/// @nodoc
class _$EpisodeCopyWithImpl<$Res, $Val extends Episode>
    implements $EpisodeCopyWith<$Res> {
  _$EpisodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EpisodeImplCopyWith<$Res> implements $EpisodeCopyWith<$Res> {
  factory _$$EpisodeImplCopyWith(
          _$EpisodeImpl value, $Res Function(_$EpisodeImpl) then) =
      __$$EpisodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String order, String name, String title});
}

/// @nodoc
class __$$EpisodeImplCopyWithImpl<$Res>
    extends _$EpisodeCopyWithImpl<$Res, _$EpisodeImpl>
    implements _$$EpisodeImplCopyWith<$Res> {
  __$$EpisodeImplCopyWithImpl(
      _$EpisodeImpl _value, $Res Function(_$EpisodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? order = null,
    Object? name = null,
    Object? title = null,
  }) {
    return _then(_$EpisodeImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      order: null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeImpl implements _Episode {
  const _$EpisodeImpl(
      {required this.id,
      required this.order,
      required this.name,
      required this.title});

  factory _$EpisodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeImplFromJson(json);

  @override
  final String id;
  @override
  final String order;
  @override
  final String name;
  @override
  final String title;

  @override
  String toString() {
    return 'Episode(id: $id, order: $order, name: $name, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpisodeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.title, title) || other.title == title));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, order, name, title);

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      __$$EpisodeImplCopyWithImpl<_$EpisodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeImplToJson(
      this,
    );
  }
}

abstract class _Episode implements Episode {
  const factory _Episode(
      {required final String id,
      required final String order,
      required final String name,
      required final String title}) = _$EpisodeImpl;

  factory _Episode.fromJson(Map<String, dynamic> json) = _$EpisodeImpl.fromJson;

  @override
  String get id;
  @override
  String get order;
  @override
  String get name;
  @override
  String get title;

  /// Create a copy of Episode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeImplCopyWith<_$EpisodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListEpisodeResponseDTO _$ListEpisodeResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _ListEpisodeResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$ListEpisodeResponseDTO {
  String get id => throw _privateConstructorUsedError;
  List<Episode> get list => throw _privateConstructorUsedError;

  /// Serializes this ListEpisodeResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListEpisodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListEpisodeResponseDTOCopyWith<ListEpisodeResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListEpisodeResponseDTOCopyWith<$Res> {
  factory $ListEpisodeResponseDTOCopyWith(ListEpisodeResponseDTO value,
          $Res Function(ListEpisodeResponseDTO) then) =
      _$ListEpisodeResponseDTOCopyWithImpl<$Res, ListEpisodeResponseDTO>;
  @useResult
  $Res call({String id, List<Episode> list});
}

/// @nodoc
class _$ListEpisodeResponseDTOCopyWithImpl<$Res,
        $Val extends ListEpisodeResponseDTO>
    implements $ListEpisodeResponseDTOCopyWith<$Res> {
  _$ListEpisodeResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListEpisodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListEpisodeResponseDTOImplCopyWith<$Res>
    implements $ListEpisodeResponseDTOCopyWith<$Res> {
  factory _$$ListEpisodeResponseDTOImplCopyWith(
          _$ListEpisodeResponseDTOImpl value,
          $Res Function(_$ListEpisodeResponseDTOImpl) then) =
      __$$ListEpisodeResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, List<Episode> list});
}

/// @nodoc
class __$$ListEpisodeResponseDTOImplCopyWithImpl<$Res>
    extends _$ListEpisodeResponseDTOCopyWithImpl<$Res,
        _$ListEpisodeResponseDTOImpl>
    implements _$$ListEpisodeResponseDTOImplCopyWith<$Res> {
  __$$ListEpisodeResponseDTOImplCopyWithImpl(
      _$ListEpisodeResponseDTOImpl _value,
      $Res Function(_$ListEpisodeResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListEpisodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? list = null,
  }) {
    return _then(_$ListEpisodeResponseDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      list: null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<Episode>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListEpisodeResponseDTOImpl extends _ListEpisodeResponseDTO {
  const _$ListEpisodeResponseDTOImpl(
      {required this.id, required final List<Episode> list})
      : _list = list,
        super._();

  factory _$ListEpisodeResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListEpisodeResponseDTOImplFromJson(json);

  @override
  final String id;
  final List<Episode> _list;
  @override
  List<Episode> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  /// Create a copy of ListEpisodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListEpisodeResponseDTOImplCopyWith<_$ListEpisodeResponseDTOImpl>
      get copyWith => __$$ListEpisodeResponseDTOImplCopyWithImpl<
          _$ListEpisodeResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListEpisodeResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _ListEpisodeResponseDTO extends ListEpisodeResponseDTO {
  const factory _ListEpisodeResponseDTO(
      {required final String id,
      required final List<Episode> list}) = _$ListEpisodeResponseDTOImpl;
  const _ListEpisodeResponseDTO._() : super._();

  factory _ListEpisodeResponseDTO.fromJson(Map<String, dynamic> json) =
      _$ListEpisodeResponseDTOImpl.fromJson;

  @override
  String get id;
  @override
  List<Episode> get list;

  /// Create a copy of ListEpisodeResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListEpisodeResponseDTOImplCopyWith<_$ListEpisodeResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
