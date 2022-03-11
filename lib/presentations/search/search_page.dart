import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:sathwaras/utils/utils.dart';

import 'widgets/search_carousel.dart';

class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  final ScrollController _scrollController = ScrollController();
  // static const List<Widget> _icons = [
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home),
  //   Icon(Icons.home)
  // ];

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return CustomScrollView(
      controller: _scrollController,
      slivers: [
        SliverAppBar(
          expandedHeight: 60,
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
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 8,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
            child: Text(
              "Categories",
              style: _themeData.textTheme.headline1?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            height: 190,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return Card(
                  color: ColorPalette.scaffoldColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                      Text(
                        "Events",
                        style: _themeData.textTheme.headline6
                            ?.copyWith(color: Colors.white),
                      )
                    ],
                  ),
                );
              },
              itemCount: 8,
            ),
          ),
        ),
      ],
    );
  }
}
