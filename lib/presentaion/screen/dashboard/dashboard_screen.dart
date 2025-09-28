import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';
import 'package:meditation_ui_app/presentaion/screen/all_tap_screen.dart';
import 'package:meditation_ui_app/presentaion/widgets/bottom_nav_bar_container.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Map<String, String>> tabList = [
    {"title": "All", "img": AssetsImagesPath.all},
    {"title": "My", "img": AssetsImagesPath.my},
    {"title": "Anxious", "img": AssetsImagesPath.anxious},
    {"title": "Sleep", "img": AssetsImagesPath.sleep},
    {"title": "Kids", "img": AssetsImagesPath.kids},
  ];

  //===============current index ===================
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      //===========================Body Section ============================
      body: SafeArea(
        child: Container(
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(AssetsImagesPath.dashboardBackground),
              fit: BoxFit.cover,
            ),
          ),
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
                      return Column(
                        children: [
                          //---------------Box ------------
                          Container(
                            height: 65,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),

                              color: Color(0xff586894),
                            ),
                            child: Center(
                              child: Image.asset(
                                "${tab["img"]}",
                                height: 25,
                                width: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),

                          //---------------------------Boxt Title-------
                          Text(
                            tab["title"].toString(),
                            style: textTheme.titleMedium,
                          ),
                        ],
                      );
                    },
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 20);
                    },
                  ),
                ),

                //----------------------------Cover Box Section----------------
                AppSpacing.v15,
                Expanded(child: AllTapScreen()),
              ],
            ),
          ),
        ),
      ),

      //========================== Bottom Navigation Bar ======================
      bottomNavigationBar: BottomNavigationBar(
        
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },

        items: [
          BottomNavigationBarItem(icon: Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: _currentIndex == 0? Color(0xff8e97fd) : Color(0xff03174d),
      ),

      child:Icon(Icons.home,size: ,))


          /*
          //-------------------------Home -------------
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              imagePath: AssetsImagesPath.home,
              isSelected: _currentIndex == 0 ? true : false,
            ),
            label: "Home",
          ),
          //------------------------- Sleep --------------
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              imagePath: AssetsImagesPath.sleepNav,
              isSelected: _currentIndex == 1 ? true : false,
            ),
            label: "Sleep",
          ),
          //---------------------- Meditate ----------------------------
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              imagePath: AssetsImagesPath.meditate,
              isSelected: _currentIndex == 2 ? true : false,
            ),
            label: "Meditate",
          ),
          //-------------- Music ------------
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              imagePath: AssetsImagesPath.music,
              isSelected: _currentIndex == 3 ? true : false,
            ),
            label: "Music",
          ),

          //----------------- Afsar ----------------
          BottomNavigationBarItem(
            icon: BottomNavBarContainer(
              imagePath: AssetsImagesPath.afser,
              isSelected: _currentIndex == 4 ? true : false,
            ),
            label: "Home",
          ),
        */

        ],
      ),
    );
  }
}
