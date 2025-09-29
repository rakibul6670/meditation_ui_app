import 'package:flutter/material.dart';

import '../../core/constants/assets_icons_path.dart';
import '../../core/constants/assets_images_path.dart';
import '../../core/theme/app_spacing.dart';
import '../widgets/screen_background.dart';
import '../widgets/tap_box_container.dart';
import 'tap_bar_all_screen.dart';

class SleepScreen extends StatefulWidget {
  const SleepScreen({super.key});

  @override
  State<SleepScreen> createState() => _SleepScreenState();
}

class _SleepScreenState extends State<SleepScreen> {

  List<Map<String, String>> tabList = [
    {"title": "All", "img": AssetsIconsPath.all},
    {"title": "My", "img": AssetsIconsPath.my},
    {"title": "Anxious", "img": AssetsIconsPath.anxious},
    {"title": "Sleep", "img": AssetsIconsPath.sleep},
    {"title": "Kids", "img": AssetsIconsPath.kids},
  ];


  //================ Selected Screen ==========================================
  int selectedScreen = 0;


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      //===========================Body Section ============================
      body: ScreenBackground(
        imagePath: AssetsImagesPath.dashboardBackground,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              AppSpacing.v86,
              //-------------------Title ---------
              Text(
                "Sleep Stories",
                textAlign: TextAlign.center,
                style: textTheme.headlineMedium,
              ),

              //-----------------Sub tile ---------
              AppSpacing.v15,

              Text(
                "Soothing bedtime stories to help tyou fall \n"
                    "into a deep and natural sleep",
                textAlign: TextAlign.center,
                style: textTheme.titleMedium,
              ),

              //-----------------------Custom TapBar Section -----------------
              AppSpacing.v34,

              SizedBox(
                height: 92,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: tabList.length,
                  itemBuilder: (context, index) {
                    final tab = tabList[index];
                    return GestureDetector(
                      onTap: () {
                        selectedScreen = index;
                        setState(() {});
                      },
                      child: TapBoxContainer(
                        index: index,
                        selectedScreen: selectedScreen,
                        tab: tab,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20);
                  },
                ),
              ),

              //----------------------------Cover Box Section----------------
              AppSpacing.v15,
              Expanded(
                child: IndexedStack(
                  index: selectedScreen,
                  children: [
                    SingleChildScrollView(child: TapBarAllScreen()),

                    SingleChildScrollView(
                      child: Center(
                        child: Text(
                          "My",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      child: Center(
                        child: Text(
                          "Anxious",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      child: Center(
                        child: Text(
                          "Sleep",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),

                    SingleChildScrollView(
                      child: Center(
                        child: Text(
                          "Kids",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),



    );
  }
}
