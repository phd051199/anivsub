import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'user_session_response_dto.freezed.dart';
part 'user_session_response_dto.g.dart';

@freezed
class UserSessionResponseDTO extends BaseDTO<UserSessionResponseEntity>
    with _$UserSessionResponseDTO {
  const factory UserSessionResponseDTO({
    String? accessToken,
    String? refreshToken,
    String? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
  }) = _UserSessionResponseDTO;

  const UserSessionResponseDTO._();

  factory UserSessionResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$UserSessionResponseDTOFromJson(json);

  @override
  List<Object?> get props => [
        accessToken,
        refreshToken,
        id,
        username,
        email,
        firstName,
        lastName,
        gender,
        image,
      ];

  @override
  UserSessionResponseEntity toEntity() {
    return UserSessionResponseEntity(
      accessToken: accessToken,
      refreshToken: refreshToken,
      id: id,
      username: username,
      email: email,
      firstName: firstName,
      lastName: lastName,
      gender: gender,
      image: image,
    );
  }
}
