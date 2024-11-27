import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

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
