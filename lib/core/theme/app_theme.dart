import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    //-------------------Text Theme -------------
    textTheme: TextTheme(
      headlineMedium: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w700,
        fontFamily: "Inter",
        letterSpacing: 2,
        color: Color(0xFFE6E7F2),
      ),

      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Color(0xffebeaec),
      ),
    ),

    //--------------Bottom navigation bar theme ------------
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xff03174d),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
    ),
  );
}
