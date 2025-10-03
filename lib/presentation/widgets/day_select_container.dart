import 'package:flutter/material.dart';

class DaySelectContainer extends StatelessWidget {
  final VoidCallback onTap;
  final String dayName;
  final bool isSelected;

  const DaySelectContainer({
    super.key,
    required this.onTap,
    required this.dayName,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: isSelected ? Colors.black : Colors.white70,
          shape: BoxShape.circle,
          border: BoxBorder.all(color: isSelected?Colors.white70:Colors.black)
        ),
        child: Center(child: Text(dayName, style: textTheme.titleSmall!.copyWith(
          color: isSelected?Color(0xffFEFFFE): Color(0xffA1A4B2),
        ))),
      ),
    );
  }
}
