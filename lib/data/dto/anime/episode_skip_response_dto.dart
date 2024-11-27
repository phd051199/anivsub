import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'episode_skip_response_dto.freezed.dart';
part 'episode_skip_response_dto.g.dart';

@freezed
class InOutro with _$InOutro {
  const factory InOutro({
    required int start,
    required int end,
  }) = _InOutro;

  factory InOutro.fromJson(Map<String, dynamic> json) =>
      _$InOutroFromJson(json);
}

@freezed
class EpisodeSkipResponseDTO extends BaseDTO<EpisodeSkipResponseEntity>
    with _$EpisodeSkipResponseDTO {
  const factory EpisodeSkipResponseDTO({
    required InOutro intro,
    required InOutro outro,
  }) = _EpisodeSkipResponseDTO;

  const EpisodeSkipResponseDTO._();

  factory EpisodeSkipResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodeSkipResponseDTOFromJson(json);

  @override
  List<Object?> get props => [intro, outro];

  @override
  EpisodeSkipResponseEntity toEntity() {
    return EpisodeSkipResponseEntity(
      intro: intro,
      outro: outro,
    );
  }
}
