import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';

class OurDetails extends StatelessWidget {

  IconData? icon;
  double? iconSize;
  Color? iconColor;

  String? title;
  double? titleSize;
  Color? titleColor;
  FontWeight? fontWeight;

  String? secondTitle;
  double? secondTitleSize;
  Color? secondTitleColor;
  FontWeight? secondFontWeight;

  OurDetails({super.key,

    this.fontWeight,
    this.icon,
    this.iconColor,
    this.iconSize,
    this.title,
    this.titleColor,
    this.titleSize,
    this.secondFontWeight,
    this.secondTitle,
    this.secondTitleColor,
    this.secondTitleSize,

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: iconSize, color: iconColor,),
        SizedBox(width: 1.sh*0.01,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: title,
              fontSize: titleSize,
              fontColor: titleColor,
              fontWeight: fontWeight,
              letterSpacing: 1,
            ),
            CustomText(
              title: secondTitle,
              fontSize: secondTitleSize,
              fontColor: secondTitleColor,
              fontWeight: secondFontWeight,
              letterSpacing: 2,
            ),
          ],
        ),
      ],
    );
  }
}
