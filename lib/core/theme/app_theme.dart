import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    primaryColor: Color(0xff8e97fd),
    scaffoldBackgroundColor: Color(0xff03174d),

    //-------------------Text Theme -------------
    textTheme: TextTheme(

      headlineMedium: TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w700,
        fontFamily: "Inter",
        letterSpacing: 2,
        color: Color(0xFFE6E7F2),
      ),
      headlineSmall: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w400,
        fontFamily: "HelveticaNeue",
        letterSpacing: 2,
        color: Color(0xFFE6E7F2),
      ),

      titleLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Color(0xffebeaec),
      ),
      titleMedium: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w300,
        color: Color(0xffebeaec),
      ),
      titleSmall: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        fontFamily: "HelveticaNeue",
        color: Color(0xffebeaec),
      ),

      bodyLarge: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w700,
        color: Color(0xffebeaec),
      ),

      bodySmall: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.w400,
        color: Color(0xffebeaec),
       // letterSpacing: 5,
      ),


    ),

    //--------------Bottom navigation bar theme ------------
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xff03174d),
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
    ),
    
    //================== Elevated Button Style ===================
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          backgroundColor:Color(0xff8e97fd),
          foregroundColor: Colors.white,
          textStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "HelveticaNeue",
            color: Color(0xffebeaec),
          ),

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(38),
          )
      ),
    )
    
  );
}
