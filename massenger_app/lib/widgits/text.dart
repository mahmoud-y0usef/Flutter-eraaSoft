import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String? title;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final String? fontFamily;

  const TextCustom({Key? key, this.title, this.color, this.fontSize, this.fontWeight, this.fontFamily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,

      ),
      textAlign: TextAlign.center,
    );
  }
}