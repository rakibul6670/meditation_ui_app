import 'package:flutter/material.dart';

class StartContainerBox extends StatelessWidget {
  final String iconImagePath;
  final String buttonImagePath;
  final String title;
  final String subTile;
  final String time;
  final Color? color;
  final Color? titleColor;
  final Color? subTitleColor;
  final Color? timeColor;

  const StartContainerBox({super.key, required this.iconImagePath, required this.buttonImagePath, required this.title, required this.subTile, required this.time, this.color, this.titleColor, this.subTitleColor, this.timeColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return  Container(
      height: 210,
      width: screenSize.width * .42,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color??Color(0xff8e97fd),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
             iconImagePath,
              width: 120,
              height: 105,
              fit: BoxFit.cover,
            ),
          ),

          Positioned(top: 85, left: 15, child: Text(title,style: textTheme.bodyLarge!.copyWith(
            color: titleColor,
          ),)),

          Positioned(top: 112, left: 15, child: Text(subTile,style: textTheme.bodySmall!.copyWith(
            color: subTitleColor,
          ),)),
          Positioned(top: 172, left: 15, child: Text(time,style: textTheme.bodySmall!.copyWith(
            color: timeColor,
          ),)),

          Positioned(
            top: 160,
            right: 15,
            bottom: 15,
            child: Image.asset(
              buttonImagePath,
              width: 70,
              height: 35,
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
    );
  }
}
