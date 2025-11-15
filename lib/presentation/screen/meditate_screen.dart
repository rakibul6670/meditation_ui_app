import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/data/dummeyData/meditation_image_list.dart';
import 'package:meditation_ui_app/presentation/widgets/grid_view_stagger_section.dart';

import '../../core/constants/assets_icons_path.dart';
import '../../core/theme/app_spacing.dart';
import '../widgets/tap_box_container.dart';

class MeditateScreen extends StatefulWidget {
  const MeditateScreen({super.key});

  @override
  State<MeditateScreen> createState() => _MeditateScreenState();
}

class _MeditateScreenState extends State<MeditateScreen> {
  //============================= Tab List =========================
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
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            AppSpacing.v86,
            //-------------------Title ---------
            Text(
              "Sleep Stories",
              textAlign: TextAlign.center,
              style: textTheme.headlineMedium!.copyWith(
                color: Color(0xff3F414E),
              ),
            ),

            //-----------------Sub tile ---------
            AppSpacing.v15,

            Text(
              "Soothing bedtime stories to help tyou fall \n"
              "into a deep and natural sleep",
              textAlign: TextAlign.center,
              style: textTheme.titleMedium!.copyWith(color: Color(0xffA0A3B1)),
            ),

            //-----------------------Custom TapBar Section -----------------
            AppSpacing.v34,

            SizedBox(
              height: 92.h,
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
                      titleColor: Colors.black,
                      bgColor: Color(0xffA0A3B1),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 20.w);
                },
              ),
            ),

            //----------------------------Cover Box Section----------------
            AppSpacing.v15,
            Expanded(
              child: IndexedStack(
                index: selectedScreen,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        //===================== Banner Container ============
                        Image.asset(
                          AssetsImagesPath.banner,
                          height: 95.h,
                          width: 374.w,
                        ),

                        AppSpacing.v25,
                        GridViewStaggerSection(
                          dataList: meditationImageList,
                          bgColor: Colors.transparent,
                          boxFit: BoxFit.cover,
                        ),

                        SizedBox(height: 20.h,)
                      ],
                    ),
                  ),

                  //SingleChildScrollView(child: TapBarAllScreen()),
                  SingleChildScrollView(
                    child: Center(
                      child: Text("My", style: TextStyle(color: Colors.black)),
                    ),
                  ),

                  SingleChildScrollView(
                    child: Center(
                      child: Text(
                        "Anxious",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    child: Center(
                      child: Text(
                        "Sleep",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    child: Center(
                      child: Text(
                        "Kids",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
