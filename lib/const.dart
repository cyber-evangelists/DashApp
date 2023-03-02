import 'package:flutter/material.dart';

//Colors
const primaryColor = Color.fromRGBO(254, 118, 95, 1);

//Width
const double baseWidth = 375;

//Will Return Sized Box to use this: value.method e.g 20.ph
extension EmptyPadding on num {
  SizedBox get ph => SizedBox(height: toDouble());
  SizedBox get pw => SizedBox(width: toDouble());
}

//give the aspect ratio of the screen by dividing the base width to the width of screen
double getDeviceWidth(BuildContext context){
  return MediaQuery.of(context).size.width / baseWidth;
}
