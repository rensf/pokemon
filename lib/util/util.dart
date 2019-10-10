import 'package:flutter/material.dart';

//十六进制编码颜色转换
class HexColor extends Color {
  static int _getColorByHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorByHex(hexColor));
}
