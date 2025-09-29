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

  //-------------------Selected screen -------------
  int selectedScreen = 0;

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
                      return GestureDetector(
                        onTap: () {
                          selectedScreen =index;
                          setState(() {
                            
                          });
                        },
                        child: Column(
                          children: [
                            //---------------Box ------------
                            Container(
                              height: 65,
                              width: 65,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                        
                                color:selectedScreen == index? Color(0xff8e97fd): Color(0xff586894),
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
                      AllTapScreen(),
                      SingleChildScrollView(child: Container(color: Colors.blue,)),
                      SingleChildScrollView(child: Container(color: Colors.grey,)),
                      SingleChildScrollView(child: Container(color: Colors.amber,)),
                      SingleChildScrollView(child: Container(color: Colors.deepOrange,)),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),

     
    
    
    );
  }
}
