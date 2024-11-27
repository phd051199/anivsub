import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/dto/user/user_dto.dart';
import '../../domain_exports.dart';

part 'user_entity.freezed.dart';
part 'user_entity.g.dart';

@freezed
class UserEntity extends BaseEntity<UserDTO> with _$UserEntity {
  const factory UserEntity({
    @JsonKey(name: 'id') String? id,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'age') int? age,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') String? password,
    @JsonKey(name: 'birth_date') String? birthDate,
    @JsonKey(name: 'image') String? image,
  }) = _UserEntity;

  const UserEntity._();

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);

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
  UserDTO toDTO() => UserDTO(
        id: id ?? '',
        firstName: firstName ?? '',
        lastName: lastName ?? '',
        age: age ?? 0,
        gender: gender ?? '',
        email: email ?? '',
        phone: phone ?? '',
        username: username ?? '',
        password: password ?? '',
        birthDate: birthDate ?? '',
        image: image ?? '',
      );
}
