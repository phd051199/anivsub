import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'episode_skip_response_dto.g.dart';

class InOutro {
  InOutro({
    required this.start,
    required this.end,
  });

  factory InOutro.fromJson(Map<String, dynamic> json) => InOutro(
        start: json['start'],
        end: json['end'],
      );
  int start;
  int end;

  Map<String, dynamic> toJson() => {
        'start': start,
        'end': end,
      };
}

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class EpisodeSkipResponseDTO extends BaseDTO<EpisodeSkipResponseEntity> {
  const EpisodeSkipResponseDTO({
    required this.intro,
    required this.outro,
  });

  factory EpisodeSkipResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$EpisodeSkipResponseDTOFromJson(json);

  final InOutro intro;
  final InOutro outro;

  Map<String, dynamic> toJson() => _$EpisodeSkipResponseDTOToJson(this);

  @override
  List<Object?> get props => [intro, intro];

  @override
  EpisodeSkipResponseEntity toEntity() {
    return EpisodeSkipResponseEntity(intro: intro, outro: outro);
  }
}
