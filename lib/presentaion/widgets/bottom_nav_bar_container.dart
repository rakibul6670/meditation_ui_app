import 'package:flutter/material.dart';

class BottomNavBarContainer extends StatelessWidget {
  final String imagePath;
  final bool isSelected;

  const BottomNavBarContainer({
    super.key,
    required this.imagePath,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: isSelected ? Color(0xff8e97fd) : Color(0xff03174d),
      ),

      child: Center(
        child: Image.asset(imagePath,
         height: 22, width: 21,
          fit: BoxFit.cover),
      ),
    );
  }
}
