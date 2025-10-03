import 'package:flutter/material.dart';

import '../../core/theme/app_spacing.dart';
class SocialLoginButton extends StatelessWidget {

  final IconData icon;
  final String buttonName;
  final Color? iconColor;
  final Color? backgroundColor;
  final Color? textColor;
  final Border? border;

  const SocialLoginButton({super.key,
    required this.icon,
    required this.buttonName,
    this.iconColor,
    this.backgroundColor, this.textColor, 
    this.border,
  });

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;

    return  Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 63,
      constraints: BoxConstraints(
        maxWidth: 374,
      ),
      decoration: BoxDecoration(
        color: backgroundColor?? Color(0xff7583CA),
        borderRadius: BorderRadius.circular(38),
        border: border,
      ),
      child: Row(
        children: [
          Icon(
            icon,
            size: 30,
            color:iconColor,
          ),
          AppSpacing.h20,
          Text(buttonName, style: textTheme.titleSmall!.copyWith(
            color: textColor??Colors.white,
          )),
        ],
      ),
    )
    ;
  }
}
