import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData;
  late double screenWidth;
  late double screenHeight;
  late double defaultSize;
  late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }

  // Get the proportionate height as per screen size
  double getProportionateScreenHeight(double inputHeight) {
    double screenHeight = this.screenHeight;
    // 896 is the layout height that designer use
    // or you can say iPhone 11
    return (inputHeight / 896.0) * screenHeight;
  }

  // Get the proportionate height as per screen size
  double getProportionateScreenWidth(double inputWidth) {
    double screenWidth = this.screenWidth;
    // 414 is the layout width that designer use
    return (inputWidth / 414.0) * screenWidth;
  }
}
