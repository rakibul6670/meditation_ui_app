import 'package:flutter/cupertino.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/presentation/screen/choose_topic_screen.dart';
import 'package:meditation_ui_app/presentation/screen/course_details.dart';
import 'package:meditation_ui_app/presentation/screen/dashboard_screen.dart';
import 'package:meditation_ui_app/presentation/screen/get_started_screen.dart';
import 'package:meditation_ui_app/presentation/screen/login_screen.dart';
import 'package:meditation_ui_app/presentation/screen/music_play_screen.dart';
import 'package:meditation_ui_app/presentation/screen/music_v2_screen.dart';
import 'package:meditation_ui_app/presentation/screen/reminder_screen.dart';
import 'package:meditation_ui_app/presentation/screen/sign_up_screen.dart';
import 'package:meditation_ui_app/presentation/screen/sign_up_sign_in_screen.dart';
import '../../presentation/screen/music_details_screen.dart';
import '../../welcome_screen.dart';

class AppPages{

  static Map<String,Widget Function(BuildContext)> routes = {

    AppRoutes.initialScreen : (context)=> WelcomeScreen(),
    AppRoutes.signupSignInScreen : (context)=> SignUpSignInScreen(),
    AppRoutes.loginScreen : (context)=> LoginScreen(),
    AppRoutes.dashboardScreen : (context)=> DashboardScreen(),
    AppRoutes.musicDetailsScreen : (context) => MusicDetailsScreen(),
    AppRoutes.musicPlayScreen: (context) => MusicPlayScreen(),
    AppRoutes.signupScreen : (context)=> SignUpScreen(),
    AppRoutes.getStartedScreen : (context) => GetStartedScreen(),
    AppRoutes.chooseTopicScreen : (context)=> ChooseTopicScreen(),
    AppRoutes.reminderScreen : (context) => ReminderScreen(),
    AppRoutes.courseDetails : (context) => CourseDetails(),
    AppRoutes.musicV2 : (context)=> MusicV2Screen(),

  };
}