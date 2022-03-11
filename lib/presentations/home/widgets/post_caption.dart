import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:sathwaras/utils/utils.dart';

class PostCaption extends StatelessWidget {
  const PostCaption({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return ReadMoreText(
      AppConstants.loremIpsum,
      trimLines: 1,
      style: _themeData.textTheme.headline6,
      moreStyle: _themeData.textTheme.headline6?.copyWith(
        color: ColorPalette.scaffoldColor,
      ),
      lessStyle: _themeData.textTheme.headline6?.copyWith(
        color: ColorPalette.scaffoldColor,
      ),
    );
  }
}
