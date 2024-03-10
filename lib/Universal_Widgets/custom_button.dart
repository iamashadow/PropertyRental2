
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomButton extends StatelessWidget {

  double? buttonHeight;
  double? buttonWidth;
  String? buttonTitle;
  double? letterSpacing;
  FontWeight? fontWeight;
  double? fontSize;
  Color? fontColor;
  Color? buttonColor;
  double? buttonRadius;
  VoidCallback? onTap;



  CustomButton({super.key,

    this.buttonHeight,
    this.fontWeight,
    this.letterSpacing,
    this.fontColor,
    this.fontSize,
    this.buttonTitle,
    this.buttonColor,
    this.buttonWidth,
    this.buttonRadius,
    this.onTap,

  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
          height: buttonHeight,
          width: buttonWidth,
          child: Center(
            child: CustomText(
              title: buttonTitle,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontSize: fontSize,
              fontColor: fontColor,
            ),
          ),
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.all(Radius.circular(buttonRadius!)),
          )

      ),
    );
  }
}
