import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_skip_response_entity.freezed.dart';

@freezed
class EpisodeSkipResponseEntity extends BaseEntity<EpisodeSkipResponseDTO>
    with _$EpisodeSkipResponseEntity {
  const factory EpisodeSkipResponseEntity({
    required InOutro intro,
    required InOutro outro,
  }) = _EpisodeSkipResponseEntity;

  const EpisodeSkipResponseEntity._();

  @override
  List<Object?> get props => [
        intro,
        outro,
      ];

  @override
  EpisodeSkipResponseDTO toDTO() => EpisodeSkipResponseDTO(
        intro: intro,
        outro: outro,
      );
}
