// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_skip_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InOutro _$InOutroFromJson(Map<String, dynamic> json) {
  return _InOutro.fromJson(json);
}

/// @nodoc
mixin _$InOutro {
  int get start => throw _privateConstructorUsedError;
  int get end => throw _privateConstructorUsedError;

  /// Serializes this InOutro to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InOutro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InOutroCopyWith<InOutro> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InOutroCopyWith<$Res> {
  factory $InOutroCopyWith(InOutro value, $Res Function(InOutro) then) =
      _$InOutroCopyWithImpl<$Res, InOutro>;
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class _$InOutroCopyWithImpl<$Res, $Val extends InOutro>
    implements $InOutroCopyWith<$Res> {
  _$InOutroCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InOutro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_value.copyWith(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InOutroImplCopyWith<$Res> implements $InOutroCopyWith<$Res> {
  factory _$$InOutroImplCopyWith(
          _$InOutroImpl value, $Res Function(_$InOutroImpl) then) =
      __$$InOutroImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int start, int end});
}

/// @nodoc
class __$$InOutroImplCopyWithImpl<$Res>
    extends _$InOutroCopyWithImpl<$Res, _$InOutroImpl>
    implements _$$InOutroImplCopyWith<$Res> {
  __$$InOutroImplCopyWithImpl(
      _$InOutroImpl _value, $Res Function(_$InOutroImpl) _then)
      : super(_value, _then);

  /// Create a copy of InOutro
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? start = null,
    Object? end = null,
  }) {
    return _then(_$InOutroImpl(
      start: null == start
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as int,
      end: null == end
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InOutroImpl implements _InOutro {
  const _$InOutroImpl({required this.start, required this.end});

  factory _$InOutroImpl.fromJson(Map<String, dynamic> json) =>
      _$$InOutroImplFromJson(json);

  @override
  final int start;
  @override
  final int end;

  @override
  String toString() {
    return 'InOutro(start: $start, end: $end)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InOutroImpl &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, start, end);

  /// Create a copy of InOutro
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InOutroImplCopyWith<_$InOutroImpl> get copyWith =>
      __$$InOutroImplCopyWithImpl<_$InOutroImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InOutroImplToJson(
      this,
    );
  }
}

abstract class _InOutro implements InOutro {
  const factory _InOutro({required final int start, required final int end}) =
      _$InOutroImpl;

  factory _InOutro.fromJson(Map<String, dynamic> json) = _$InOutroImpl.fromJson;

  @override
  int get start;
  @override
  int get end;

  /// Create a copy of InOutro
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InOutroImplCopyWith<_$InOutroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EpisodeSkipResponseDTO _$EpisodeSkipResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _EpisodeSkipResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$EpisodeSkipResponseDTO {
  InOutro get intro => throw _privateConstructorUsedError;
  InOutro get outro => throw _privateConstructorUsedError;

  /// Serializes this EpisodeSkipResponseDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeSkipResponseDTOCopyWith<EpisodeSkipResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeSkipResponseDTOCopyWith<$Res> {
  factory $EpisodeSkipResponseDTOCopyWith(EpisodeSkipResponseDTO value,
          $Res Function(EpisodeSkipResponseDTO) then) =
      _$EpisodeSkipResponseDTOCopyWithImpl<$Res, EpisodeSkipResponseDTO>;
  @useResult
  $Res call({InOutro intro, InOutro outro});

  $InOutroCopyWith<$Res> get intro;
  $InOutroCopyWith<$Res> get outro;
}

/// @nodoc
class _$EpisodeSkipResponseDTOCopyWithImpl<$Res,
        $Val extends EpisodeSkipResponseDTO>
    implements $EpisodeSkipResponseDTOCopyWith<$Res> {
  _$EpisodeSkipResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = null,
    Object? outro = null,
  }) {
    return _then(_value.copyWith(
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as InOutro,
      outro: null == outro
          ? _value.outro
          : outro // ignore: cast_nullable_to_non_nullable
              as InOutro,
    ) as $Val);
  }

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InOutroCopyWith<$Res> get intro {
    return $InOutroCopyWith<$Res>(_value.intro, (value) {
      return _then(_value.copyWith(intro: value) as $Val);
    });
  }

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InOutroCopyWith<$Res> get outro {
    return $InOutroCopyWith<$Res>(_value.outro, (value) {
      return _then(_value.copyWith(outro: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EpisodeSkipResponseDTOImplCopyWith<$Res>
    implements $EpisodeSkipResponseDTOCopyWith<$Res> {
  factory _$$EpisodeSkipResponseDTOImplCopyWith(
          _$EpisodeSkipResponseDTOImpl value,
          $Res Function(_$EpisodeSkipResponseDTOImpl) then) =
      __$$EpisodeSkipResponseDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InOutro intro, InOutro outro});

  @override
  $InOutroCopyWith<$Res> get intro;
  @override
  $InOutroCopyWith<$Res> get outro;
}

/// @nodoc
class __$$EpisodeSkipResponseDTOImplCopyWithImpl<$Res>
    extends _$EpisodeSkipResponseDTOCopyWithImpl<$Res,
        _$EpisodeSkipResponseDTOImpl>
    implements _$$EpisodeSkipResponseDTOImplCopyWith<$Res> {
  __$$EpisodeSkipResponseDTOImplCopyWithImpl(
      _$EpisodeSkipResponseDTOImpl _value,
      $Res Function(_$EpisodeSkipResponseDTOImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = null,
    Object? outro = null,
  }) {
    return _then(_$EpisodeSkipResponseDTOImpl(
      intro: null == intro
          ? _value.intro
          : intro // ignore: cast_nullable_to_non_nullable
              as InOutro,
      outro: null == outro
          ? _value.outro
          : outro // ignore: cast_nullable_to_non_nullable
              as InOutro,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EpisodeSkipResponseDTOImpl extends _EpisodeSkipResponseDTO {
  const _$EpisodeSkipResponseDTOImpl({required this.intro, required this.outro})
      : super._();

  factory _$EpisodeSkipResponseDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpisodeSkipResponseDTOImplFromJson(json);

  @override
  final InOutro intro;
  @override
  final InOutro outro;

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeSkipResponseDTOImplCopyWith<_$EpisodeSkipResponseDTOImpl>
      get copyWith => __$$EpisodeSkipResponseDTOImplCopyWithImpl<
          _$EpisodeSkipResponseDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpisodeSkipResponseDTOImplToJson(
      this,
    );
  }
}

abstract class _EpisodeSkipResponseDTO extends EpisodeSkipResponseDTO {
  const factory _EpisodeSkipResponseDTO(
      {required final InOutro intro,
      required final InOutro outro}) = _$EpisodeSkipResponseDTOImpl;
  const _EpisodeSkipResponseDTO._() : super._();

  factory _EpisodeSkipResponseDTO.fromJson(Map<String, dynamic> json) =
      _$EpisodeSkipResponseDTOImpl.fromJson;

  @override
  InOutro get intro;
  @override
  InOutro get outro;

  /// Create a copy of EpisodeSkipResponseDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeSkipResponseDTOImplCopyWith<_$EpisodeSkipResponseDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
