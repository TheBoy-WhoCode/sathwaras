import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sathwaras/utils/assets/app_assets.dart';
import 'package:sathwaras/utils/utils.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
        SliverToBoxAdapter(
          child: CarouselSlider.builder(
            itemCount: 3,
            itemBuilder: (context, itemIndex, pageViewIndex) {
              return Card(
                margin: const EdgeInsets.symmetric(
                  vertical: 4,
                ),
                elevation: 0,
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14),
                ),
                child: SizedBox(
                  height: 200,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              AppAssets.bloodDonation2,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        height: 200,
                        decoration: const BoxDecoration(
                          gradient: ColorPalette.overlayGradient,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
              autoPlay: true,
              aspectRatio: 16 / 9,
              viewportFraction: 0.9,
              enableInfiniteScroll: true,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
            ),
          ),
        )
      ],
    );
  }
}
