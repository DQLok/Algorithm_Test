import 'package:flutter/material.dart';

class ColorsApp {
  static Color primary = HexColor.fromHex('#265181');
  static Color primarySecond = HexColor.fromHex('#71bc56');
  static Color black = HexColor.fromHex('#2f2f2f');
  static Color white = HexColor.fromHex('#ffffff');
  static Color grey = HexColor.fromHex('#969696');
  static Color green = HexColor.fromHex('#29b363');
  static Color blue = HexColor.fromHex('#2c7edb');
  static Color grey1 = HexColor.fromHex('#646464');
  static Color grey2 = HexColor.fromHex('#ebebeb');
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}
