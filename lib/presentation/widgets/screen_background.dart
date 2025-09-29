import 'package:flutter/material.dart';

class ScreenBackground extends StatelessWidget {
  final Widget child;
  final String imagePath;

  const ScreenBackground({
    super.key,
    required this.child,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
        child: child,
      ),
    );
  }
}
