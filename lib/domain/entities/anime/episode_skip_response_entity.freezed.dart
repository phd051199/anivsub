// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'episode_skip_response_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EpisodeSkipResponseEntity {
  InOutro get intro => throw _privateConstructorUsedError;
  InOutro get outro => throw _privateConstructorUsedError;

  /// Create a copy of EpisodeSkipResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpisodeSkipResponseEntityCopyWith<EpisodeSkipResponseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpisodeSkipResponseEntityCopyWith<$Res> {
  factory $EpisodeSkipResponseEntityCopyWith(EpisodeSkipResponseEntity value,
          $Res Function(EpisodeSkipResponseEntity) then) =
      _$EpisodeSkipResponseEntityCopyWithImpl<$Res, EpisodeSkipResponseEntity>;
  @useResult
  $Res call({InOutro intro, InOutro outro});

  $InOutroCopyWith<$Res> get intro;
  $InOutroCopyWith<$Res> get outro;
}

/// @nodoc
class _$EpisodeSkipResponseEntityCopyWithImpl<$Res,
        $Val extends EpisodeSkipResponseEntity>
    implements $EpisodeSkipResponseEntityCopyWith<$Res> {
  _$EpisodeSkipResponseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpisodeSkipResponseEntity
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

  /// Create a copy of EpisodeSkipResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InOutroCopyWith<$Res> get intro {
    return $InOutroCopyWith<$Res>(_value.intro, (value) {
      return _then(_value.copyWith(intro: value) as $Val);
    });
  }

  /// Create a copy of EpisodeSkipResponseEntity
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
abstract class _$$EpisodeSkipResponseEntityImplCopyWith<$Res>
    implements $EpisodeSkipResponseEntityCopyWith<$Res> {
  factory _$$EpisodeSkipResponseEntityImplCopyWith(
          _$EpisodeSkipResponseEntityImpl value,
          $Res Function(_$EpisodeSkipResponseEntityImpl) then) =
      __$$EpisodeSkipResponseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({InOutro intro, InOutro outro});

  @override
  $InOutroCopyWith<$Res> get intro;
  @override
  $InOutroCopyWith<$Res> get outro;
}

/// @nodoc
class __$$EpisodeSkipResponseEntityImplCopyWithImpl<$Res>
    extends _$EpisodeSkipResponseEntityCopyWithImpl<$Res,
        _$EpisodeSkipResponseEntityImpl>
    implements _$$EpisodeSkipResponseEntityImplCopyWith<$Res> {
  __$$EpisodeSkipResponseEntityImplCopyWithImpl(
      _$EpisodeSkipResponseEntityImpl _value,
      $Res Function(_$EpisodeSkipResponseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EpisodeSkipResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? intro = null,
    Object? outro = null,
  }) {
    return _then(_$EpisodeSkipResponseEntityImpl(
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

class _$EpisodeSkipResponseEntityImpl extends _EpisodeSkipResponseEntity {
  const _$EpisodeSkipResponseEntityImpl(
      {required this.intro, required this.outro})
      : super._();

  @override
  final InOutro intro;
  @override
  final InOutro outro;

  /// Create a copy of EpisodeSkipResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpisodeSkipResponseEntityImplCopyWith<_$EpisodeSkipResponseEntityImpl>
      get copyWith => __$$EpisodeSkipResponseEntityImplCopyWithImpl<
          _$EpisodeSkipResponseEntityImpl>(this, _$identity);
}

abstract class _EpisodeSkipResponseEntity extends EpisodeSkipResponseEntity {
  const factory _EpisodeSkipResponseEntity(
      {required final InOutro intro,
      required final InOutro outro}) = _$EpisodeSkipResponseEntityImpl;
  const _EpisodeSkipResponseEntity._() : super._();

  @override
  InOutro get intro;
  @override
  InOutro get outro;

  /// Create a copy of EpisodeSkipResponseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpisodeSkipResponseEntityImplCopyWith<_$EpisodeSkipResponseEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
