import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/data/dto/anime/list_episode_response_dto.dart';
import 'package:anivsub/domain/domain_exports.dart';

class ListEpisodeResponseEntity extends BaseEntity<ListEpisodeResponseDTO> {
  const ListEpisodeResponseEntity({
    required this.id,
    required this.list,
  });

  final String id;
  final List<Episode> list;

  @override
  List<Object?> get props => [id, list];

  @override
  ListEpisodeResponseDTO toDTO() {
    return ListEpisodeResponseDTO(id: id, list: list);
  }
}
