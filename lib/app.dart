import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/routes/app_pages.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_theme.dart';
import 'package:meditation_ui_app/presentation/screen/dashboard_screen.dart';

class MeditationUiApp extends StatelessWidget {
  const MeditationUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,

     initialRoute: AppRoutes.dashboardScreen,
     routes: AppPages.routes,
     
     theme: AppTheme.darkTheme,


    );
  }
}