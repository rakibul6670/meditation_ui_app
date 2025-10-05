import 'package:flutter/material.dart';

class OnTapLinkText extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String linkTextName;

  const OnTapLinkText({
    super.key,
    required this.onTap,
    required this.title,
    required this.linkTextName,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return GestureDetector(
      onTap: onTap,

      child: RichText(
        text: TextSpan(
          text: title,
          style: textTheme.titleSmall!.copyWith(color: Colors.black54),
          children: [
            TextSpan(
              text: "  $linkTextName",
              style: textTheme.titleSmall!.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
