import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

import '../../../../shared/dimens/dimens.dart';

class SuggestionImage extends StatelessWidget {
  const SuggestionImage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.d42.responsive(),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
      ),
      child: CachedNetworkImage(imageUrl: imageUrl),
    );
  }
}
