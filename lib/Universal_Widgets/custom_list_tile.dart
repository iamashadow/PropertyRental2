
import 'package:flutter/material.dart';
import 'custom_text.dart';

class CustomListTile extends StatelessWidget {

  String? titleText;
  FontWeight? titleFontWeight;
  double? titleFontSize;
  Color? titleFontColor;

  String? subTitleText;
  FontWeight? subTitleFontWeight;
  double? subTitleFontSize;
  Color? subTitleFontColor;

  VoidCallback? onTap;

  Color? leadingIconColor;
  double? leadingIconSize;

  Color? trailingIconColor;
  double? trailingIconSize;

  IconData? leadingIcon;
  IconData? trailingIcon;

  bool? titleUsed;
  bool subTitleUsed;
  bool onTapUsed;
  bool leadingUsed;
  bool trailingUsed;


  CustomListTile({super.key,

    this.titleText,
    this.titleFontWeight,
    this.titleFontSize,
    this.titleFontColor,

    this.subTitleText,
    this.subTitleFontWeight,
    this.subTitleFontSize,
    this.subTitleFontColor,

    this.titleUsed = true,
    this.subTitleUsed = false,
    this.onTapUsed = false,
    this.leadingUsed = false,
    this.trailingUsed = false,

  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTapUsed ? onTap : null,
      title: CustomText(
        title: titleText,
        fontWeight: titleFontWeight,
        fontSize: titleFontSize,
        fontColor: titleFontColor,
      ),
      subtitle: subTitleUsed ? CustomText(
        title: subTitleText,
        fontColor: subTitleFontColor,
        fontSize: subTitleFontSize,
        fontWeight: subTitleFontWeight,
        letterSpacing: 2,
      ) : null,
      leading: leadingUsed ? Icon(leadingIcon) : null,
      trailing: trailingUsed ? Icon(trailingIcon) : null,
    );
  }
}
