import 'package:flutter/material.dart';

import '../../core/constants/assets_icons_path.dart';
import '../../core/constants/assets_images_path.dart';

class BannerContainerBox extends StatelessWidget {
  const BannerContainerBox({super.key});

  @override
  Widget build(BuildContext context) {
    final texTheme = Theme.of(context).textTheme;

    return Container(
      height: 95,
      decoration: BoxDecoration(
        color: Color(0xff333242),
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(AssetsImagesPath.bannerForground),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          //----------------Title -----------
          Positioned(
            top: 27,
            left: 30,
            child: Text("Daily Thought", style: texTheme.bodyLarge),
          ),
          //--------------Sub title -----------
          Positioned(
            top: 56,
            left: 30,
            child: Text("Daily Thought", style: texTheme.bodySmall),
          ),
          //-------------------Play Button ----------
          Positioned(
            top: 28,
            right: 30,
            child: Image.asset(AssetsIconsPath.play, height: 40, width: 40),
          ),
        ],
      ),
    );
  }
}
