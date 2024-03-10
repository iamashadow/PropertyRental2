import 'package:flutter/material.dart';

import 'custom_text.dart';


class OurAmazingServiceButtonRetangle extends StatelessWidget {

  double? width;
  double? height;
  String? buttonTitle;
  FontWeight? fontWeight;
  Color? titleColor;
  double? titleSize;
  Color? buttonColor;

  OurAmazingServiceButtonRetangle({super.key,

    this.fontWeight,
    this.titleColor,
    this.width,
    this.height,
    this.buttonTitle,
    this.titleSize,
    this.buttonColor,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: buttonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: CustomText(
          title: buttonTitle,
          fontWeight: fontWeight,
          fontColor: titleColor,
          fontSize: titleSize,
        ),
      ),
    );
  }
}
