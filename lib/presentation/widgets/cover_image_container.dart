import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';
import 'package:meditation_ui_app/core/theme/app_spacing.dart';


class CoverImageContainer extends StatelessWidget {
  const CoverImageContainer({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.all(20),
      height: 233,
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(AssetsImagesPath.boxBackground),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 30),
          //-----------------  Cover image Title -------------
          Text("The Ocean Moon", style: textTheme.headlineMedium),
          AppSpacing.v5,
          //---------------- Cover image Sub title--------------
          Text(
            "No-stop 8- hour mixes of our \n most popular sleep audio",
            style: textTheme.titleMedium,
          ),
          

          //------------------------Start image button---------------
          AppSpacing.v35,
          GestureDetector(
            onTap: () {},
            child: Image.asset(
              AssetsImagesPath.startButton,
              height: 35,
              width: 70,
              fit: BoxFit.cover,
            ),
          ),


        ],
      ),
    
    );
  }
}
