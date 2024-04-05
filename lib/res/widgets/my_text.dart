import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String title;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final double? height;

  const MyText(
      {super.key,
      required this.title,
      this.fontSize,
      this.fontWeight,
      this.color,
      this.textAlign,
      this.maxLines,
      this.height});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        height: height,
      ),
    );
  }
}
