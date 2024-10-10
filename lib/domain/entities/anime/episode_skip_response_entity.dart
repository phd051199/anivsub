import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class EpisodeSkipResponseEntity extends BaseEntity<EpisodeSkipResponseDTO> {
  const EpisodeSkipResponseEntity({
    required this.intro,
    required this.outro,
  });

  final InOutro intro;
  final InOutro outro;

  @override
  List<Object?> get props => [intro, outro];

  @override
  EpisodeSkipResponseDTO toDTO() {
    return EpisodeSkipResponseDTO(intro: intro, outro: outro);
  }
}
