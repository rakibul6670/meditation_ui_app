import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/theme/app_theme.dart';
import 'package:meditation_ui_app/presentaion/screen/dashboard/dashboard_screen.dart';

class MeditationUiApp extends StatelessWidget {
  const MeditationUiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: DashboardScreen(),
     
     theme: AppTheme.darkTheme,


    );
  }
}