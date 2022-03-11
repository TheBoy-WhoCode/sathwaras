import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:sathwaras/utils/utils.dart';

class PostImage extends StatelessWidget {
  const PostImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: CachedNetworkImage(
        imageUrl: AppConstants.profileURL,
        fit: BoxFit.cover,
      ),
    );
  }
}
