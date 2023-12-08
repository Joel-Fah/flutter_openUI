import 'dart:math';

import 'package:flutter/material.dart';

// Colors

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

//Images

// Context Variables
double deviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

double deviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
