import 'package:flutter/material.dart';

import 'post_caption.dart';
import 'post_header.dart';
import 'post_image.dart';
import 'post_stats.dart';

class PostContainer extends StatelessWidget {
  const PostContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      elevation: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8),
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: const [
                  PostHeader(),
                  SizedBox(
                    height: 6,
                  ),
                  PostCaption(),
                  SizedBox(
                    height: 6,
                  ),
                  PostImage(),
                  SizedBox(
                    height: 6,
                  ),
                  PostStats()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
