import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  String? title;
  double? fontSize;
  FontWeight? fontWeight;
  Color? fontColor;
  double? letterSpacing;
  TextOverflow? txtOverflow;
  int? mxLine;

  CustomText({super.key,
    this.title,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.letterSpacing,
    this.txtOverflow,
    this.mxLine,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      overflow: txtOverflow,
      maxLines: mxLine,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
