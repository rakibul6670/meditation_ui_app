import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';

class MusicCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String time;

  const MusicCard({super.key, required this.imagePath, required this.title, required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
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

        Text(title, style: TextStyle(color: Colors.white)),

        Text(
         time,
          style: TextStyle(color: Colors.white70),
        ),
      ],
    );
  }
}
