import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  
  const CustomElevatedButton({super.key, required this.onPressed, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63.h,
      width: 374.w,
      child: ElevatedButton(
        onPressed: onPressed,
         child: Text(buttonName)
         ),
    );
  }
}
