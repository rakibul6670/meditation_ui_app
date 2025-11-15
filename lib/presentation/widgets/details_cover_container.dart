import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_ui_app/core/constants/assets_icons_path.dart';

class DetailsCoverContainer extends StatelessWidget {
  final String bgImagePath;
  final VoidCallback onTapBackButton;

  const DetailsCoverContainer({
    super.key,
    required this.bgImagePath,
    required this.onTapBackButton,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: 290.h,
      width: screenSize.width.w,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(bgImagePath),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          //================== Back Button ================
          Positioned(
            left: 20.w,
            top: 50.h,
            child: GestureDetector(
              onTap: onTapBackButton,
              child: Image.asset(
                AssetsIconsPath.back,
                height: 50.h,
                width: 50.w,
                fit: BoxFit.cover,
              ),
            ),
          ),

          //=================== Love Button ============
          Positioned(
            right: 90.w,
            top: 50.h,
            child: Image.asset(
              AssetsIconsPath.love,
              height: 50.h,
              width: 50.w,
              fit: BoxFit.cover,
            ),
          ),

          //========================Download Button ============
          Positioned(
            right: 20.w,
            top: 50.h,
            child: Image.asset(
              AssetsIconsPath.download,
              height: 50.h,
              width: 50.w,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
