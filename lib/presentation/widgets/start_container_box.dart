import 'package:flutter/material.dart';

class StartContainerBox extends StatelessWidget {
  final String iconImagePath;
  final String buttonImagePath;
  final String title;
  final String subTile;
  final String time;

  const StartContainerBox({super.key, required this.iconImagePath, required this.buttonImagePath, required this.title, required this.subTile, required this.time});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return  Container(
      height: 210,
      width: 177,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Theme.of(context).primaryColor,
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

          Positioned(top: 85, left: 15, child: Text(title,style: textTheme.bodyLarge,)),

          Positioned(top: 112, left: 15, child: Text(subTile,style: textTheme.bodySmall,)),
          Positioned(top: 172, left: 15, child: Text(time,style: textTheme.bodySmall,)),

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
