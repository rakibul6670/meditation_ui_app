import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonName;
  
  const CustomElevatedButton({super.key, required this.onPressed, required this.buttonName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 63,
      width: 374,
      child: ElevatedButton(
        onPressed: onPressed,
         child: Text(buttonName)
         ),
    );
  }
}
