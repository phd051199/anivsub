import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_episode_response_entity.freezed.dart';

@freezed
class ListEpisodeResponseEntity extends BaseEntity<ListEpisodeResponseDTO>
    with _$ListEpisodeResponseEntity {
  const factory ListEpisodeResponseEntity({
    required String id,
    required List<Episode> list,
  }) = _ListEpisodeResponseEntity;

  const ListEpisodeResponseEntity._();

  @override
  List<Object?> get props => [
        id,
        list,
      ];

  @override
  ListEpisodeResponseDTO toDTO() => ListEpisodeResponseDTO(
        id: id,
        list: list,
      );
}
