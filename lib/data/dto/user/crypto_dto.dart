import 'package:anivsub/data/dto/base_dto.dart';
import 'package:anivsub/domain/entities/user/crypto_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'crypto_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class CryptoDTO extends BaseDTO<CryptoEntity> {

  const CryptoDTO({
    this.coin,
    this.wallet,
    this.network,
  });

  factory CryptoDTO.fromJson(Map<String, dynamic> json) =>
      _$CryptoDTOFromJson(json);
  final String? coin;
  final String? wallet;
  final String? network;

  Map<String, dynamic> toJson() => _$CryptoDTOToJson(this);

  @override
  CryptoEntity toEntity() => CryptoEntity(
        coin: coin,
        wallet: wallet,
        network: network,
      );

  @override
  List<Object?> get props => [
        coin,
        wallet,
        network,
      ];
}
