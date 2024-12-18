import 'package:flutter/material.dart';

class SizeConfig {
  static const double disktop = 1200;
  static const double tablet = 800;

  // used in case tablet and mobile design only 
  static late double width , height;

  static init(BuildContext context) {  
    width= MediaQuery.sizeOf(context).width;
    height= MediaQuery.sizeOf(context).width;
  }
}