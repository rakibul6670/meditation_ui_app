import 'package:flutter/material.dart';

class TapBoxContainer extends StatelessWidget {
  final int index;
  final int selectedScreen;
  final Map<String, String> tab;
  final Color? titleColor;
  final Color? bgColor;

  const TapBoxContainer({
    super.key,
    required this.index,
    required this.selectedScreen,
    required this.tab,
    this.titleColor, this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        //---------------Box ------------
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),

            color: selectedScreen == index
                ? Color(0xff8e97fd)
                : bgColor?? Color(0xff586894),
          ),
          child: Center(
            child: Image.asset(
              "${tab["img"]}",
              height: 25,
              width: 25,
              fit: BoxFit.cover,
            ),
          ),
        ),

        //---------------------------Boxt Title-----------------
        Text(
          tab["title"].toString(),
          style: textTheme.titleMedium!.copyWith(color: titleColor),
        ),
      ],
    );
  }
}
