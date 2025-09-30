import 'package:flutter/material.dart';
import '../../core/constants/assets_icons_path.dart';

class MusicPlayScreen extends StatelessWidget {
  const MusicPlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Theme.of(context).scaffoldBackgroundColor,
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
    );
  }
}
