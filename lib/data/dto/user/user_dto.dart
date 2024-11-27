import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/domain_exports.dart';
import '../../data_exports.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO extends BaseDTO<UserEntity> with _$UserDTO {
  const factory UserDTO({
    String? id,
    String? firstName,
    String? lastName,
    int? age,
    String? gender,
    String? email,
    String? phone,
    String? username,
    String? password,
    String? birthDate,
    String? image,
  }) = _UserDTO;

  const UserDTO._();

  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        age,
        gender,
        email,
        phone,
        username,
        password,
        birthDate,
        image,
      ];

  @override
  UserEntity toEntity() => UserEntity(
        id: id,
        firstName: firstName,
        lastName: lastName,
        age: age,
        gender: gender,
        email: email,
        phone: phone,
        username: username,
        password: password,
        birthDate: birthDate,
        image: image,
      );
}
