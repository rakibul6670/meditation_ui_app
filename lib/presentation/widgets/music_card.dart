import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';

class MusicCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;
  final Color? titleColor;
  final Color? timeColor;

  const MusicCard({super.key, required this.imagePath, required this.title, required this.time, this.titleColor, this.timeColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        //-----------------Image -----------------
        Image.asset(
          imagePath,
          height: 122,
          width: 177,
          fit: BoxFit.cover,
        ),

        //----------------------Card title ----------------
        AppSpacing.v10,
        //==================== Title ==============
        Text(title,
            maxLines: 1,overflow: TextOverflow.ellipsis,
            style: TextStyle(color: titleColor ?? Colors.white)),

        //================== Time ==============
        Text(
         time,
          maxLines: 1,overflow: TextOverflow.ellipsis,
          style: TextStyle(color:timeColor?? Colors.white70),
        ),
      ],
    );
  }
}
