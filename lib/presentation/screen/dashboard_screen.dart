import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/presentation/screen/home_screen.dart';
import 'package:meditation_ui_app/presentation/screen/meditate_screen.dart';
import 'package:meditation_ui_app/presentation/screen/profile_screen.dart';
import 'package:meditation_ui_app/presentation/screen/sleep_screen.dart';

import 'package:meditation_ui_app/presentation/widgets/bottom_nav_bar_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //===============current index =============================================
  int _currentIndex = 0;
  //================ Selected Screen ==========================================
  int selectedScreen = 0;

  List<Widget> screen = [
    HomeScreen(),
    SleepScreen(),
    MeditateScreen(),
    SleepScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //===========================Body Section ============================
      body: screen[_currentIndex],

      //========================== Bottom Navigation Bar ======================
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: _currentIndex == 0 ? Colors.white : Color(0xff03174d),
        selectedItemColor:
            _currentIndex == 0 ? Color(0xff8E97FD) : Color(0xffE6E7F2),
        unselectedItemColor:
            _currentIndex == 0 ? Color(0xffA0A3B1) : Color(0xff98A1BD),
        currentIndex: _currentIndex,
        onTap: (value) {
          _currentIndex = value;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              icon: FontAwesomeIcons.house,
              currentIndex: _currentIndex,
              index: 0,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              icon: FontAwesomeIcons.moon,
              currentIndex: _currentIndex,
              index: 1,
            ),
            label: "Sleep",
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              icon: FontAwesomeIcons.person,
              currentIndex: _currentIndex,
              index: 2,
            ),
            label: "Meditate",
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              icon: FontAwesomeIcons.music,
              currentIndex: _currentIndex,
              index: 3,
            ),
            label: "Music",
          ),
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              icon: FontAwesomeIcons.person,
              currentIndex: _currentIndex,
              index: 4,
            ),
            label: "Afsar",
          ),
        ],
      ),
    );
  }
}
