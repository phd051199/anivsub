import 'package:anivsub/data/dto/base_dto.dart';
import 'package:anivsub/domain/entities/user_session_request_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_session_request_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class UserSessionRequestDTO extends BaseDTO<UserSessionRequestEntity> {
  const UserSessionRequestDTO({
    required this.username,
    required this.password,
    this.expiresInMins,
  });

  factory UserSessionRequestDTO.fromJson(Map<String, dynamic> json) =>
      _$UserSessionRequestDTOFromJson(json);
  final String username;
  final String password;
  final int? expiresInMins;

  @override
  UserSessionRequestEntity toEntity() => UserSessionRequestEntity(
        username: username,
        password: password,
        expiresInMins: expiresInMins,
      );

  @override
  List<Object?> get props => [username, password, expiresInMins];

  Map<String, dynamic> toJson() => _$UserSessionRequestDTOToJson(this);
}
