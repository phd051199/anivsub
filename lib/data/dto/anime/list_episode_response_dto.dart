import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_episode_response_dto.freezed.dart';
part 'list_episode_response_dto.g.dart';

@freezed
class Episode with _$Episode {
  const factory Episode({
    required String id,
    required String order,
    required String name,
    required String title,
  }) = _Episode;

  factory Episode.fromJson(Map<String, dynamic> json) =>
      _$EpisodeFromJson(json);
}

@freezed
class ListEpisodeResponseDTO extends BaseDTO<ListEpisodeResponseEntity>
    with _$ListEpisodeResponseDTO {
  const factory ListEpisodeResponseDTO({
    required String id,
    required List<Episode> list,
  }) = _ListEpisodeResponseDTO;

  const ListEpisodeResponseDTO._();

  factory ListEpisodeResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ListEpisodeResponseDTOFromJson(json);

  @override
  List<Object?> get props => [id, list];

  @override
  ListEpisodeResponseEntity toEntity() {
    return ListEpisodeResponseEntity(
      id: id,
      list: list,
    );
  }
}
