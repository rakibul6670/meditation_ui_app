import 'package:flutter/cupertino.dart';
import '../../core/constants/assets_images_path.dart';

class AuthBackground extends StatelessWidget {

  final Widget child;
  final bool? isVisibility;
  
  const AuthBackground({super.key, required this.child, this.isVisibility});

  @override
  Widget build(BuildContext context) {
   // final double screenWidth =MediaQuery.of(context).size.width;

    return SafeArea(
      child: SizedBox(
        height: double.maxFinite,
        child: Stack(
          children: [
            //=================Background Image ===============
            Positioned(
              top: 0,
              left: 0,
              child: Image.asset(
                AssetsImagesPath.loginBackground,
                fit: BoxFit.cover,
            //width:screenWidth < 300 ? screenWidth : 430,
                height: 428,
              ),
            ),

            //=================Back button ===============
            // Positioned(
            //   top: 50,
            //   left: 20,
            //   child: Visibility(
            //     visible: isVisibility??true,
            //     replacement: Text(" "),
            //     child: GestureDetector(
            //       onTap: ()=> Navigator.pop(context),
            //       child: Image.asset(AssetsIconsPath.back),
            //     ),
            //   ),
            // ),



             //------------------child ---------------------
             Align(alignment: Alignment.center, child: child),


          ],
        ),
      ),
    );
  }
}
