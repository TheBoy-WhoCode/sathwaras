import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sathwaras/utils/utils.dart';

class SearchCarousel extends StatelessWidget {
  const SearchCarousel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData _themeData = Theme.of(context);
    return CarouselSlider.builder(
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
          child: Stack(
            // alignment: Alignment.center,
            children: [
              Container(
                // height: 220,
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
                // height: 220,
                decoration: const BoxDecoration(
                  gradient: ColorPalette.overlayGradient,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Blood Donation Camp",
                      style: _themeData.textTheme.headline1?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Date : 10th April Sunday, timings 8:00am to 7:00pm",
                      style: _themeData.textTheme.headline5?.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.51,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          minimumSize: const Size(100, 40),
                        ),
                        onPressed: () {
                          logger.d("carousel clicked");
                        },
                        child: Row(
                          children: const [
                            Text("Click here to register"),
                            Icon(Icons.keyboard_arrow_right_rounded)
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      options: CarouselOptions(
        height: 220,
        autoPlay: true,
        aspectRatio: 16 / 9,
        viewportFraction: 0.9,
        enableInfiniteScroll: true,
        enlargeCenterPage: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}
