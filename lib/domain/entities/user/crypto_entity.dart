import 'package:anivsub/data/dto/user/crypto_dto.dart';
import 'package:anivsub/domain/entities/base_entity.dart';

class CryptoEntity extends BaseEntity<CryptoDTO> {
  final String? coin;
  final String? wallet;
  final String? network;

  const CryptoEntity({
    this.coin,
    this.wallet,
    this.network,
  });

  @override
  List<Object?> get props => [
        coin,
        wallet,
        network,
      ];

  @override
  CryptoDTO toDTO() => CryptoDTO(
        coin: coin,
        wallet: wallet,
        network: network,
      );
}
