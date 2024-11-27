import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data_exports.dart';
import '../../domain_exports.dart';

part 'get_encrypted_hls_request_entity.freezed.dart';
part 'get_encrypted_hls_request_entity.g.dart';

@freezed
class GetEncryptedHlsRequestEntity extends BaseEntity<GetEncryptedHlsRequestDTO>
    with _$GetEncryptedHlsRequestEntity {
  const factory GetEncryptedHlsRequestEntity({
    required String id,
    required String play,
    required String link,
    @Default('1') String backuplinks,
  }) = _GetEncryptedHlsRequestEntity;

  const GetEncryptedHlsRequestEntity._();

  factory GetEncryptedHlsRequestEntity.fromJson(Map<String, dynamic> json) =>
      _$GetEncryptedHlsRequestEntityFromJson(json);

  @override
  List<Object?> get props => [
        id,
        play,
        link,
        backuplinks,
      ];

  @override
  GetEncryptedHlsRequestDTO toDTO() => GetEncryptedHlsRequestDTO(
        id: id,
        play: play,
        link: link,
        backuplinks: backuplinks,
      );
}
