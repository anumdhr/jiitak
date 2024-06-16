import 'package:flutter/material.dart';

// CustomText Widget
class CustomText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  CustomText(this.text, {this.style});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style ??
          TextStyle(
            color: Color(0xff303030),
            fontSize: 12,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
    );
  }
}
