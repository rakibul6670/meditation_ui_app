import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';

import 'package:meditation_ui_app/core/theme/app_spacing.dart';

import 'package:meditation_ui_app/presentation/widgets/banner_container_box.dart';
import 'package:meditation_ui_app/presentation/widgets/music_card.dart';

import '../widgets/start_container_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      //backgroundColor:Theme.of(context).scaffoldBackgroundColor,
       backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppSpacing.v50,
                //===================== Title ==================
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text("Silent",style: textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),),
                    Image.asset(AssetsIconsPath.logo, height: 30, width: 30),
                    Text("Moon",style: textTheme.titleMedium!.copyWith(
                  color: Colors.black,
                ),),
                  ],
                ),
          
                AppSpacing.v40,
                //====================Welcome user ===================
                Text("Good Morning ,Afsar",style: textTheme.headlineMedium!.copyWith(
                  color: Colors.black,
                ),),
                AppSpacing.v10,
          
                //================ Sub Title =======================
                Text("We wish you have a good day",style: textTheme.titleLarge!.copyWith(
                  color: Colors.black,
                ),),
          
                AppSpacing.v30,
          
                //==========================Start Container Box Section ===========
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
      
                  children: [
                    StartContainerBox(
                      iconImagePath: AssetsImagesPath.basicSource,
                      buttonImagePath: AssetsImagesPath.startButton,
                      title: 'Basic',
                      subTile: 'SOURCE',
                      time: '3-4 MIN',
                    ),
          
                    StartContainerBox(
                      color: Color(0xffFFC97E),
                      timeColor: Colors.black,
                      subTitleColor: Colors.black,
                      titleColor: Colors.black,
                      iconImagePath: AssetsImagesPath.relaxation,
                      buttonImagePath: AssetsImagesPath.startBlackButton,
                      title: 'Relaxation',
                      subTile: 'MUSIC',
                      time: '3-10 MIN',
                    ),
                  ],
                ),
          
                AppSpacing.v20,
                BannerContainerBox(),
                AppSpacing.v40,
          
                //==========================Recommended Section =================
                Text("Recommended for you",style: textTheme.headlineSmall!.copyWith(
                  color: Colors.black,
                ),),
                AppSpacing.v20,
          
                SizedBox(
                  height: 200,
                  child: ListView.separated(
                    // shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.courseDetails);

                        },
                        child: MusicCard(
                          imagePath: AssetsImagesPath.happiness,
                          title: "Happiness",
                          time: "MEDITATION . 3-10 MIN",
                        ),
                      );
                    },

                    separatorBuilder: (context,index){
                      return AppSpacing.h20;
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
