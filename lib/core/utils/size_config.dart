import 'package:flutter/material.dart';

class SizeConfig{
  static const double desktop = 1300;
  static const double tablet = 800;

  static late double height, width;

  static void initSizeConfig(BuildContext context){
    height = MediaQuery.sizeOf(context).height;
    width = MediaQuery.sizeOf(context).width;
  }
}