import 'package:flutter/material.dart';
import 'package:sathwaras/utils/utils.dart';
import 'package:sathwaras/widgets/widgets.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return Row(
      children: [
        const ProfileAvatar(imageUrl: AppConstants.profileURL),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Jiten Patel",
                style: _themeData.textTheme.headline5?.copyWith(
                  color: ColorPalette.secondaryFontColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Row(
                children: [
                  Text(
                    "10 min ago • ",
                    style: _themeData.textTheme.subtitle1
                        ?.copyWith(color: ColorPalette.secondaryFontColor),
                  ),
                  Icon(
                    Icons.public,
                    color: Colors.grey[600],
                    size: 12,
                  ),
                ],
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: () {
            logger.d("More");
          },
          icon: const Icon(Icons.more_horiz),
        ),
      ],
    );
  }
}
