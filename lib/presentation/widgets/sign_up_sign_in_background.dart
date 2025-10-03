import 'package:flutter/material.dart';

import '../../core/constants/assets_icons_path.dart';
import '../../core/constants/assets_images_path.dart';

class SignUpSignInBackground extends StatelessWidget {
  final Widget child;

  const SignUpSignInBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
     final double screenWidth =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
         
         //=====================Background Rectangle type Image ============
          Positioned(
            top: 0,
            child: Image.asset(
              AssetsImagesPath.lightSignUpBackground,
              height: 504,
              //width: 423,
              width: screenWidth < 300
                  ? screenWidth 
                  : 430,
              fit: BoxFit.cover,
            ),
          ),


         //=========================== Foreground man siting image ========
          Positioned(
            top: 161,
            child: Image.asset(
              AssetsImagesPath.lightSignUpImage,
              height: 242,

              width: screenWidth < 300
                  ? screenWidth 
                  : 332,
              fit: BoxFit.cover,
            ),
          ),

          //===================== Title ==================
          Positioned(
            top: 51,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                //---------------------Silent Text --------------
                Text(
                  "Silent",
                  style: textTheme.titleMedium!.copyWith(color: Colors.black),
                ),

                //-------------------Icon -------------
                Image.asset(AssetsIconsPath.logo, height: 30, width: 30),

                //----------------------Moon Text------------------
                Text(
                  "Moon",
                  style: textTheme.titleMedium!.copyWith(color: Colors.black),
                ),
              ],
            ),
          ),

          //---------- child -----------------
        
          Align(alignment: Alignment.center, child: child),

          
        ],
      ),
    );
  }
}
