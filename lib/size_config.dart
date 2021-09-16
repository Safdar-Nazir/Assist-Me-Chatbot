import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = MediaQueryData();
  static double screenWidth = 375;
  static double screenHeight = 812;
  static double defaultSize = 812;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

double getScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  return (inputWidth / 375) * screenWidth;
}

double getScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  return (inputHeight / 812) * screenHeight;
}
