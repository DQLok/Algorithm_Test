import 'package:assignment_test/constants/static_app.dart';
import 'package:flutter/material.dart';

class DimensionApp {
  static const double size5 = 5;

  static const double size10 = 10;
  static const double size12 = 12;
  static const double size13 = 13;
  static const double size14 = 14;
  static const double size15 = 15;
  static const double size18 = 18;

  static const double size20 = 20;
  static const double size25 = 25;

  static const double size30 = 30;

  static const double size40 = 40;

  static const double size50 = 50;
}

double sizeScreen(BuildContext context, String type) {
  if (type == StaticApp.height) {
    return MediaQuery.of(context).size.height;
  } else {
    return MediaQuery.of(context).size.width;
  }
}

double paddingScreen(BuildContext context, String type) {
  switch (type) {
    case StaticApp.vertical:
      return MediaQuery.viewPaddingOf(context).vertical;
    case StaticApp.horizontal:
      return MediaQuery.viewPaddingOf(context).horizontal;
    case StaticApp.left:
      return MediaQuery.viewPaddingOf(context).left;
    case StaticApp.top:
      return MediaQuery.viewPaddingOf(context).top;
    case StaticApp.right:
      return MediaQuery.viewPaddingOf(context).right;
    case StaticApp.bottom:
      return MediaQuery.viewPaddingOf(context).bottom;
    default:
      return MediaQuery.viewPaddingOf(context).horizontal;
  }
}
