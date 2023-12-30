import 'dart:math';

import 'package:flutter/material.dart';

// Image
String jfImage = "https://avatars.githubusercontent.com/u/69576717?v=4";

// Gradients
LinearGradient purpleGradient = const LinearGradient(
  colors: [
    Color(0xFFdc6bf5),
    Color(0xFFab4df1),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient blueGradient = const LinearGradient(
  colors: [
    Color(0xFF81c4f1),
    Color(0xFF7ca1f3),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient orangeGradient = const LinearGradient(
  colors: [
    Color(0xFFf5b266),
    Color(0xFFee9f5c),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient pinkGradient = const LinearGradient(
  colors: [
    Color(0xFFed6894),
    Color(0xFFe95874),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

LinearGradient greenGradient = const LinearGradient(
  colors: [
    Color(0xFF6ae7ce),
    Color(0xFF68e1b8),
  ],
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
);

// Context Variables
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;

class Day2Component {
  // Colors
  static const Color primaryColor = Color(0xFF04c18e);
  static const Color secondaryColor = Color(0xFFe4f9f2);
  static const Color backgroundColor = Color(0xFF1b1215);

  // Images
  static const String d2BgImage = 'assets/images/d2_bg_image.png';

  // Function
  static bool isValidEmail(String email) {
    // Regular expression for email validation
    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$',
    );

    return emailRegex.hasMatch(email);
  }
}

class Day3Component {
  // Colors
  static const Color primaryColor = Color(0xFFF9CA54);
  static const Color secondaryColor = Color(0xFF3A4869);
  static const Color lightColor = Color(0xFF465475);
  static const Color iconColor = Color(0xFF6A799E);

  // Fonts
  static const String monumentExtended = 'MonumentExtended';
  static const TextStyle textStyle = TextStyle(color: Colors.white, fontFamily: "MonumentExtended");
  static const TextStyle lightTextStyle = TextStyle(color: Color(0xFF3A4869), fontFamily: "MonumentExtended");

  // Radius
  static BorderRadius borderRadius = BorderRadius.circular(20.0);

  // Images
  static const String d3BgImage = "assets/images/d3_bg_image.png";
  static const String bgImage = "https://s3-alpha-sig.figma.com/img/c846/5e14/83e14fdd90e8122c89563fbf3c2d01c5?Expires=1704672000&Signature=WQdJ9ZXTwgTpXCKD~fXYiOAR2dQ75s632jKgTbkOfi6lwDF-khTfdduretLJ2O1gqlTbLHE7y38pnqpC4e-MbB0MZ0XnnCO~JeklnDTMKzxXmLm9D0rbMLVuYaFujbxvagmQCnDo-hXN-GFc3c5-fxCBQgOz6FJJJNEz7Apw24ICdXY9JbEDTYnwPltGmxJR3rIbqVrGGqDvdrecsB4a3h9-1tXB6hcgGOaObGKH4Eve-xtJ~4mCbQtBEYM~xEiENfcGcdYBuMDci6Yi8LFntHDURekWu9OdkFQxKJwlX72PxGEObnnykqIRwH2pPU1xMMdKiRhNShEbossW6ONtjg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4";
}