import 'package:flutter/cupertino.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/presentation/screen/dashboard_screen.dart';
import '../../presentation/screen/music_details_screen.dart';

class AppPages{

  static Map<String,Widget Function(BuildContext)> routes = {
    AppRoutes.dashboardScreen : (context)=> DashboardScreen(),
    AppRoutes.musicDetailsScreen : (context) => MusicDetailsScreen(),
  };
}