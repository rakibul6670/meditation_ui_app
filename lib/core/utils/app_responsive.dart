
import 'package:flutter/widgets.dart';

class AppResponsive {

  //===================== Screen size ====================
  static  _screenSize(context) => MediaQuery.of(context).size;

   //===================== Screen size ====================
  static  screenWidth(context) => _screenSize(context).width;

   //===================== Screen size ====================
  static screenHeight(context) => _screenSize(context.height);
  

}
