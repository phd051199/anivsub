import 'package:anivsub/data/data_exports.dart';
import 'package:anivsub/domain/domain_exports.dart';

class Link {
  String file;
  Link({required this.file});

  factory Link.fromJson(Map<String, dynamic> json) => Link(file: json["file"]);
  Map<String, dynamic> toJson() => {"file": file};
}

class GetEncryptedHlsResponseEntity
    extends BaseEntity<GetEncryptedHlsResponseDTO> {
  final int success;
  final String title;
  final List<Link> link;
  final String playTech;

  const GetEncryptedHlsResponseEntity({
    required this.success,
    required this.title,
    required this.link,
    required this.playTech,
  });

  @override
  List<Object?> get props => [success, title, playTech];

  @override
  GetEncryptedHlsResponseDTO toDTO() {
    return GetEncryptedHlsResponseDTO(
      success: success,
      title: title,
      link: link,
      playTech: playTech,
    );
  }
}
