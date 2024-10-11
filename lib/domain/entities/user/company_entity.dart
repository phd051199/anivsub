import 'package:anivsub/data/dto/user/company_dto.dart';
import 'package:anivsub/domain/domain_exports.dart';

class CompanyEntity extends BaseEntity<CompanyDTO> {
  const CompanyEntity({
    this.department,
    this.name,
    this.title,
    this.address,
  });
  final String? department;
  final String? name;
  final String? title;
  final AddressEntity? address;

  @override
  List<Object?> get props => [
        department,
        name,
        title,
        address,
      ];

  @override
  CompanyDTO toDTO() => CompanyDTO(
        department: department,
        name: name,
        title: title,
        address: address?.toDTO(),
      );
}
