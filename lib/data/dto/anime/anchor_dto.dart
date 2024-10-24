import 'package:freezed_annotation/freezed_annotation.dart';

part 'anchor_dto.freezed.dart';
part 'anchor_dto.g.dart';

@freezed
class Anchor with _$Anchor {
  const factory Anchor({
    required String name,
    required String path,
  }) = _Anchor;

  factory Anchor.fromJson(Map<String, dynamic> json) => _$AnchorFromJson(json);
}
