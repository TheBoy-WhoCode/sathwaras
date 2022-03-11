import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sathwaras/utils/utils.dart';

import 'widgets/search_carousel.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final ThemeData _themeData = Theme.of(context);
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
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
                    color: ColorPalette.primaryFontColor,
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    size: 30,
                    color: ColorPalette.primaryFontColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        const SliverToBoxAdapter(
          child: SearchCarousel(),
        )
      ],
    );
  }
}
