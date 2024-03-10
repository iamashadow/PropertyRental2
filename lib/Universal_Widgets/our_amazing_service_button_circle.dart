import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text.dart';

class OurAmazingServicesButtonCircle extends StatelessWidget {

  double? height;
  double? width;
  Color? buttonColor;
  IconData? icon;
  String? title;
  Color? iconColor;
  double? iconSize;
  Color? titleColor;


  OurAmazingServicesButtonCircle({super.key,

    this.width,
    this.height,
    this.icon,
    this.buttonColor,
    this.title,
    this.iconColor,
    this.iconSize,
    this.titleColor,

  });


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: buttonColor,
            shape: BoxShape.circle,
          ),
          child: Icon(icon,size: iconSize, color: iconColor,),
        ),
        SizedBox(height: 1.sh*0.010),
        CustomText(
          title: title,
          fontColor: titleColor,
          fontWeight: FontWeight.w700,
        ),
      ],
    );
  }
}
