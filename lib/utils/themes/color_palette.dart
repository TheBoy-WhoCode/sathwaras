import 'package:flutter/material.dart';

class ColorPalette {
  // Color(0xFFedf3f9)
  // Colors
  static const Color primaryColor = Colors.white;
  static const Color scaffoldColor = Color(0xFF7579E7);
  static const Color backgroundColor = Color(0xFFedf3f9);

  static const Color secondaryFontColor = Colors.white;
  static const Color primaryFontColor = Color(0xFF47546e);

  // Material Colors
  static const Map<int, Color> purpleShade = {
    50: Color.fromRGBO(117, 121, 231, .1),
    100: Color.fromRGBO(117, 121, 231, .2),
    200: Color.fromRGBO(117, 121, 231, .3),
    300: Color.fromRGBO(117, 121, 231, .4),
    400: Color.fromRGBO(117, 121, 231, .5),
    500: Color.fromRGBO(117, 121, 231, .6),
    600: Color.fromRGBO(117, 121, 231, .7),
    700: Color.fromRGBO(117, 121, 231, .8),
    800: Color.fromRGBO(117, 121, 231, .9),
    900: Color.fromRGBO(117, 121, 231, 1),
  };

  static const Map<int, Color> whiteShade = {
    50: Color.fromRGBO(255, 255, 255, .1),
    100: Color.fromRGBO(255, 255, 255, .2),
    200: Color.fromRGBO(255, 255, 255, .3),
    300: Color.fromRGBO(255, 255, 255, .4),
    400: Color.fromRGBO(255, 255, 255, .5),
    500: Color.fromRGBO(255, 255, 255, .6),
    600: Color.fromRGBO(255, 255, 255, .7),
    700: Color.fromRGBO(255, 255, 255, .8),
    800: Color.fromRGBO(255, 255, 255, .9),
    900: Color.fromRGBO(255, 255, 255, 1),
  };

  static const MaterialColor primarySwatch =
      MaterialColor(0xFF7579E7, purpleShade);

  // Gradients
  static const LinearGradient overlayGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Colors.black54, Colors.black54, Colors.transparent],
  );
}
