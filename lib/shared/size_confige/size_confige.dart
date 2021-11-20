import 'package:flutter/material.dart';

class SizedConf {
  static MediaQueryData _mediaQueryData = const MediaQueryData();
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static double defaultSize = 0.0;
  static Orientation orientation = Orientation.portrait;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Get The proportionate height as per screen size

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizedConf.screenHeight;
  //  812.0 is the layout height that designer used
  return (inputHeight / 812.0) * screenHeight;
}

//Get The proportionate width as per screen size

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizedConf.screenWidth;
  // 375.0 is the layout width that designer used
  return (inputWidth / 375.0) * screenWidth;
}
