import 'package:flutter/material.dart';
import '../../core/constants/assets_icons_path.dart';
import '../../core/constants/assets_images_path.dart';

class MusicPlayScreenBackground extends StatelessWidget {

 final Widget child;
  const MusicPlayScreenBackground({super.key, required this.child,});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          //================Ball type image shape =================
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AssetsImagesPath.musicBallBox,
              width: 227,
              height: 312,
              fit: BoxFit.cover,
            ),
          ),

          //================bind type image shape ================
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              AssetsImagesPath.musicTopShape,
              width: 95,
              height: 187,
              fit: BoxFit.cover,
            ),
          ),

          //================== Back Button ================
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

          //=================== Love Button ============
          Positioned(
            right: 90,
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
            right: 20,
            top: 50,
            child: Image.asset(
              AssetsIconsPath.download,
              height: 50,
              width: 50,
              fit: BoxFit.cover,
            ),
          ),

          //================ bind type image shape--------
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              AssetsImagesPath.musicBottomLeftShape,
              width: 191,
              height: 173,
              fit: BoxFit.cover,
            ),
          ),

          //================Bind type image shape--------
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              AssetsImagesPath.musicBottomRightShape,
              width: 191,
              height: 173,
              fit: BoxFit.cover,
            ),
          ),

          //========================Foreground Child (main UI) =========
          child,
        ],
      ),
    );
  }
}
