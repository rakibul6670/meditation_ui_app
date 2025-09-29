import 'package:flutter/material.dart';

class BottomNavBarContainer extends StatelessWidget {
  final IconData icon;
  final int currentIndex;
  final int index;

  const BottomNavBarContainer({super.key, required this.icon, required this.currentIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      width: 46,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: currentIndex == index ? Color(0xff8e97fd) : Color(0xff03174d),
      ),

      child: Icon(icon),
    );
  }
}
