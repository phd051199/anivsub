import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class GetEncryptedHlsRequestEntity
    extends BaseEntity<GetEncryptedHlsRequestDTO> {
  final String id;
  final String play;
  final String link;
  final String backuplinks;

  const GetEncryptedHlsRequestEntity({
    required this.id,
    required this.play,
    required this.link,
    required this.backuplinks,
  });

  @override
  List<Object?> get props => [id, play, link, backuplinks];

  @override
  GetEncryptedHlsRequestDTO toDTO() {
    return GetEncryptedHlsRequestDTO(
      id: id,
      play: play,
      link: link,
      backuplinks: backuplinks,
    );
  }
}
