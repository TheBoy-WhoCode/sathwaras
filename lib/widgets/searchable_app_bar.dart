import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sathwaras/utils/utils.dart';

import 'profile_avatar.dart';

class SearchableAppBar extends StatelessWidget {
  const SearchableAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0,
      centerTitle: true,
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: ProfileAvatar(imageUrl: AppConstants.profileURL),
      ),
      title: Container(
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search for something',
              hintStyle: GoogleFonts.openSans(
                fontSize: 16,
                color: ColorPalette.secondaryFontColor,
              ),
              prefixIcon: const Icon(
                Icons.search,
                size: 30,
                color: ColorPalette.secondaryFontColor,
              ),
            ),
          ),
        ),
      ),
      floating: true,
      snap: false,
    );
  }
}
