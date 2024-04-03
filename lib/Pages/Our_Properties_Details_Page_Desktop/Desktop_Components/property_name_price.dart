import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../Universal_Widgets/custom_text.dart';

class PropertyNamePrice extends StatelessWidget {

  //Property Name
  String? propertyName;
  FontWeight? propertyNameFontWeight;
  double? propertyNameFontSize;

  //Property Adding Date on WebSite
  String? propertyAddingDate;
  FontWeight? propertyAddingDateFontWeight;
  Color? propertyAddingDateColor;
  double? propertyAddingDateFontSize;

  //Property Status
  String? propertyStatusText;
  Color? propertyStatusTextColor;
  double? propertyStatusTextSize;

  //Property Price
  String? propertyPriceText;
  FontWeight? propertyPriceTextFontWeight;
  double? propertyPriceTextSize;
  Color? propertyPriceTextColor;

  PropertyNamePrice({super.key,

    this.propertyAddingDate,
    this.propertyAddingDateColor,
    this.propertyAddingDateFontSize,
    this.propertyAddingDateFontWeight,
    this.propertyName,
    this.propertyNameFontSize,
    this.propertyNameFontWeight,
    this.propertyPriceText,
    this.propertyPriceTextColor,
    this.propertyPriceTextFontWeight,
    this.propertyPriceTextSize,
    this.propertyStatusText,
    this.propertyStatusTextColor,
    this.propertyStatusTextSize

  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        //Property Name, Property Adding Date on WebSite,
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Property Name
            CustomText(
              title: propertyName!,
              fontWeight: propertyNameFontWeight,
              fontSize: propertyNameFontSize,
            ),

            //Property Adding Date on WebSite
            CustomText(
              title: propertyAddingDate!,
              fontWeight: propertyAddingDateFontWeight,
              fontColor: propertyAddingDateColor,
              fontSize: propertyAddingDateFontSize,
            ),
          ],
        ),

        // Vertical Divider, Property Status, Property Price
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Vertical Divider
            const VerticalDivider(
              color: Colors.blueGrey,
            ),
            //Property Status, Property Price
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Property Status
                CustomText(
                  title: propertyStatusText!,
                  fontColor: propertyStatusTextColor,
                  fontSize: propertyStatusTextSize,
                ),


                //Property Price
                Row(
                  children: [
                    const Icon(FontAwesomeIcons.bangladeshiTakaSign, color: Color(0xFF4B5EA3),),
                    CustomText(
                      title: propertyPriceText!,
                      fontWeight: propertyPriceTextFontWeight,
                      fontSize: propertyPriceTextSize,
                      fontColor: propertyPriceTextColor,
                    ),
                  ],
                ),

              ],
            )
          ],
        )


        //
      ],
    );
  }
}
