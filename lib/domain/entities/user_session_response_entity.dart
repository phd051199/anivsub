import 'package:anivsub/data/dto/user_session_response_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class UserSessionResponseEntity extends BaseEntity {
  const UserSessionResponseEntity({
    this.accessToken,
    this.refreshToken,
    this.id,
    this.username,
    this.email,
    this.firstName,
    this.lastName,
    this.gender,
    this.image,
  });
  final String? accessToken;
  final String? refreshToken;
  final int? id;
  final String? username;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? gender;
  final String? image;

  @override
  UserSessionResponseDTO toDTO() => UserSessionResponseDTO(
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

  @override
  List<Object?> get props =>
      [accessToken, refreshToken, id, username, email, firstName, lastName];

  UserSessionResponseEntity copyWith({
    String? accessToken,
    String? refreshToken,
    int? id,
    String? username,
    String? email,
    String? firstName,
    String? lastName,
    String? gender,
    String? image,
  }) {
    return UserSessionResponseEntity(
      accessToken: accessToken ?? this.accessToken,
      refreshToken: refreshToken ?? this.refreshToken,
      id: id ?? this.id,
      username: username ?? this.username,
      email: email ?? this.email,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      gender: gender ?? this.gender,
      image: image ?? this.image,
    );
  }
}
