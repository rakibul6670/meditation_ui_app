import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/routes/app_routes.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';

import '../widgets/music_card.dart';

class MusicDetailsScreen extends StatelessWidget {
  const MusicDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

   // final Map? arg = ModalRoute.of(context)?.settings.arguments as Map;

    // fallback values
    final String img =  AssetsImagesPath.nightIsland;
    final String title =  "Night Island";
    final String time =  "45 MIN SLEEP MUSIC";

    return Scaffold(
      //backgroundColor: Colors.w,
      //============================Body Section===================
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              //====================cover image ===================
              Container(
                height: 290,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(img),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  children: [
          
                    //================== Back Button ================
                    Positioned(
                      left:20,
                      top: 50,
                      child: GestureDetector(
                        onTap:()=> Navigator.pop(context),
                        child: Image.asset(
                          AssetsIconsPath.back,
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //=================== Love Button ============
                    Positioned(
                      right:90,
                      top: 50,
                      child: Image.asset(
                        AssetsIconsPath.love,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),

                    //========================Download Button ============
                    Positioned(
                      right:20,
                      top: 50,
                      child: Image.asset(
                        AssetsIconsPath.download,
                        height: 50,
                        width: 50,
                        fit: BoxFit.cover,
                      ),
                    ),



          
                  ],
                ),
              ),
          
               Padding(
                 padding: EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
          
                     AppSpacing.v30,
                     //=====================Music title=========
                     Text(title,style: textTheme.headlineMedium,),
                     AppSpacing.v15,
          
                     //=====================Music time=========
                     Text(time,style:textTheme.titleMedium,),
                     AppSpacing.v20,
          
                     //=====================Music description =========
                     Text("Ease the mind into a restful night 's sleep with \n "
                         "these deep,ambient tones",style: textTheme.titleSmall!.copyWith(
                         color: Colors.white54
                     ),),
                     AppSpacing.v30,
          
                     Row(
                       children: [
                         Icon(FontAwesomeIcons.heart,color: Colors.white,),
                         AppSpacing.h10,
                         Text("100 Favorites",style: textTheme.titleSmall!.copyWith(
                             color: Colors.white
                         ),),
                         Spacer(),
                         Icon(FontAwesomeIcons.headphones,color: Colors.white,),
                         AppSpacing.h10,
                         Text("100 Favorites",style: textTheme.titleSmall!.copyWith(
                             color: Colors.white
                         ),),
                         AppSpacing.h56,
          
                       ],
                     ),
          
                     //=======================Related Music Section======================
                     AppSpacing.v60,
                     Text("Related",style: textTheme.headlineSmall,),
                     AppSpacing.v20,
          
                     SizedBox(
                       height: 192,
                       child: ListView.separated(
                         // shrinkWrap: true,
                         // physics: NeverScrollableScrollPhysics(),
                         itemCount: 10,
                         scrollDirection: Axis.horizontal,
                         itemBuilder: (context, index) {
                           return GestureDetector(
                             onTap: (){
                               // Navigator.pushNamed(
                               //   context, AppRoutes.musicDetailsScreen,
                               //   // arguments: {
                               //   //    "img":AssetsImagesPath.nightIsland,
                               //   //   "title":'Night Island',
                               //   //   "time":"45 MIN SLEEP MUSIC"
                               //   // },
                               // );
          
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
          
                     SizedBox(
                       height: 63,
                       width: double.maxFinite,
                       child: ElevatedButton(
                           onPressed: ()=> Navigator.pushNamed(context, AppRoutes.musicPlayScreen),
                           child: Text("Play"),
                       ),
                     )
          
                   ],
                 ),
               ),
               AppSpacing.v20,
          
          
          
          
            ],
          ),
        ),
      ),
    );
  }
}
