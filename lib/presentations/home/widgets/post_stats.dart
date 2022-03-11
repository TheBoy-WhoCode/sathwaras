import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'post_button.dart';
import 'package:sathwaras/utils/utils.dart';

class PostStats extends StatelessWidget {
  const PostStats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: const EdgeInsets.all(4),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.thumb_up,
                size: 10,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            Expanded(
              child: Text(
                "10k Likes",
                style: _themeData.textTheme.subtitle1,
              ),
            ),
            Text(
              "5k Shares",
              style: _themeData.textTheme.subtitle1,
            )
          ],
        ),
        const Divider(),
        Row(
          children: [
            PostButton(
              icon: Icon(
                MdiIcons.thumbUpOutline,
                color: Colors.grey[600],
                size: 20,
              ),
              label: "Like",
              onTap: () => logger.d("Like"),
            ),
            const Spacer(),
            PostButton(
              icon: Icon(
                MdiIcons.shareOutline,
                color: Colors.grey[600],
                size: 25,
              ),
              label: "Share",
              onTap: () => logger.d("share"),
            ),
          ],
        )
      ],
    );
  }
}
