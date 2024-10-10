import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'list_episode_response_dto.g.dart';

class Episode {
  factory Episode.fromJson(Map<String, dynamic> json) => Episode(
        id: json['id'],
        order: json['order'],
        name: json['name'],
        title: json['title'],
      );
  Episode({
    required this.id,
    required this.order,
    required this.name,
    required this.title,
  });
  String id;
  String order;
  String name;
  String title;

  Map<String, dynamic> toJson() => {
        'id': id,
        'order': order,
        'name': name,
        'title': title,
      };
}

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class ListEpisodeResponseDTO extends BaseDTO<ListEpisodeResponseEntity> {
  const ListEpisodeResponseDTO({
    required this.id,
    required this.list,
  });

  factory ListEpisodeResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$ListEpisodeResponseDTOFromJson(json);

  final String id;
  final List<Episode> list;

  Map<String, dynamic> toJson() => _$ListEpisodeResponseDTOToJson(this);

  @override
  List<Object?> get props => [id, list];

  @override
  ListEpisodeResponseEntity toEntity() {
    return ListEpisodeResponseEntity(id: id, list: list);
  }
}
