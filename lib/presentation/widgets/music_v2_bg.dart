import 'package:flutter/material.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';
import 'package:meditation_ui_app/core/constants/assets_images_path.dart';

class MusicV2Bg extends StatelessWidget {
  final Widget child;

  const MusicV2Bg({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            AssetsImagesPath.musicV2CT,
            height: 209,
            width: 209,
            fit: BoxFit.cover,
          ),
        ),
        //============================= Top Right image ===================
        Positioned(
          top: 0,
          right: 0,
          child: Image.asset(
            AssetsImagesPath.musicV2TR,
            height: 481,
            width: 272,
            fit: BoxFit.cover,
          ),
        ),

        //================= Bottom left image ==========
        Positioned(
          top: 523.45,

          left: -34,

          child: Image.asset(
            AssetsImagesPath.musicV2BL,
            height: 481,
            width: 272,
            fit: BoxFit.cover,
          ),
        ),

        //======================= Bottom right circle =======
        Positioned(
          bottom: 0,
          right: 0,
          left: 234,
          child: Image.asset(
            AssetsImagesPath.musicV2CB,
            height: 209,
            width: 209,
            fit: BoxFit.cover,
          ),
        ),

        ///=================== Love Button ============
        Positioned(
          right: 90,
          top: 50,
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: Color(0xffB6B8BF),
              shape: BoxShape.circle
            ),
            child: Icon(Icons.favorite_border, color: Colors.white,size: 30,),
          ),
        ),

        //========================Download Button ============
        Positioned(
          right: 20,
          top: 50,
          child: Container(
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              color: Color(0xffB6B8BF),
              shape: BoxShape.circle
            ),
            child: Icon(Icons.download_outlined, color: Colors.white,size: 30,),
          ),
        ),
        //====================== Back to previus screen =================
        Positioned(
          left: 20,
          top: 50,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(
              AssetsIconsPath.back,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),
        ),

        //======================== child Screen foreground section=========
        Align(alignment: Alignment.topLeft, child: child),
      ],
    );
  }
}
