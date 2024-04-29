import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  String? title;
  double? fontSize;
  FontWeight? fontWeight;
  Color? fontColor;
  double? letterSpacing;
  TextOverflow? txtOverflow;
  int? mxLine;
  TextAlign? textAlign;

  CustomText({super.key,
    this.title,
    this.fontSize,
    this.fontWeight,
    this.fontColor,
    this.letterSpacing,
    this.txtOverflow,
    this.mxLine,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title!,
      overflow: txtOverflow,
      maxLines: mxLine,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: fontColor,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
