import 'package:freezed_annotation/freezed_annotation.dart';

part 'anchor_dto.g.dart';

@JsonSerializable(
  createToJson: true,
  explicitToJson: true,
)
class Anchor {
  factory Anchor.fromJson(Map<String, dynamic> json) => _$AnchorFromJson(json);
  Anchor({
    required this.name,
    required this.path,
  });
  final String name;
  final String path;

  Map<String, dynamic> toJson() => _$AnchorToJson(this);
}
