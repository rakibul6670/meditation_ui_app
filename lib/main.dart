import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_ui_app/app.dart';
import 'package:meditation_ui_app/presentation/screen/reminder_screen.dart';

import 'core/routes/app_pages.dart';
import 'core/routes/app_routes.dart';
import 'core/theme/app_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      designSize: Size(414, 896),
     // designSize: Size(360, 865),
      builder: (context,child){
        return MaterialApp(
          debugShowCheckedModeBanner: false,


          initialRoute: AppRoutes.initialScreen,
          routes: AppPages.routes,
        //  home: ReminderScreen(),

        //  theme: AppTheme.darkTheme,
          //darkTheme: AppTheme.darkTheme,
          //themeMode: ThemeMode.system,

          theme: ThemeData(
            useMaterial3: true,
            primaryColor: Color(0xff8e97fd),
            scaffoldBackgroundColor: Color(0xff03174d),

            //-------------------Text Theme -------------
            textTheme: TextTheme(
              headlineMedium: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                fontFamily: "Inter",
                letterSpacing: 2,
                color: Color(0xFFE6E7F2),
              ),
              headlineSmall: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "HelveticaNeue",
                letterSpacing: 2,
                color: Color(0xFFE6E7F2),
              ),

              titleLarge: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w300,
                color: Color(0xffebeaec),
              ),
              titleMedium: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w300,
                color: Color(0xffebeaec),
              ),
              titleSmall: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                fontFamily: "HelveticaNeue",
                color: Color(0xffebeaec),
              ),

              bodyLarge: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xffebeaec),
              ),

              bodySmall: TextStyle(
                fontSize: 11.sp,
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
                backgroundColor: Color(0xff8e97fd),
                foregroundColor: Colors.white,
                textStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  fontFamily: "HelveticaNeue",
                  color: Color(0xffebeaec),
                ),

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(38)),
              ),
            ),

            //==================Input Field Theme ======================
            inputDecorationTheme: InputDecorationTheme(
                hintStyle: TextStyle(
                  color: Color(0xffA1A4B2),
                  fontFamily: "HelveticaNeue",
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                ),
                filled: true,
                fillColor: Color(0xffF2F3F7),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),

                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),


                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
            ),

          ),


        );
      },
    );
  }
}
