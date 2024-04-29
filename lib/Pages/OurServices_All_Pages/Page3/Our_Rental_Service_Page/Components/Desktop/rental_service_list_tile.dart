import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

class RentalServiceListTile extends StatelessWidget {

  IconData? icon;

  Color? titleColor;
  double? titleFontSize;
  FontWeight? titleFontWeight;
  String? title;
  double? titleLetterSpacing;
  TextAlign? titletextAlign;


  Color? subtitleColor;
  double? subtitleFontSize;
  FontWeight? subtitleFontWeight;
  String? subtitle;

  RentalServiceListTile({super.key,

    this.title,
    this.titleColor,
    this.icon,
    this.subtitle,
    this.subtitleColor,
    this.subtitleFontSize,
    this.subtitleFontWeight,
    this.titleFontSize,
    this.titleFontWeight,
    this.titleLetterSpacing,
    this.titletextAlign,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icon, color: ColorManager.kasmiriBlue, size: 10.sp,),
        CustomText(
          fontColor: titleColor,
          fontSize: titleFontSize,
          fontWeight: titleFontWeight,
          title: title,
          letterSpacing: titleLetterSpacing,
          textAlign: titletextAlign,

        ),
        CustomText(
          fontColor: subtitleColor,
          fontSize: subtitleFontSize,
          fontWeight: subtitleFontWeight,
          title: subtitle,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
