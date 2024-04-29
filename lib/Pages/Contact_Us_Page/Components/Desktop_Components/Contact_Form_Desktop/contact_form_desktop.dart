import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text_form_field.dart';
import 'package:property_rental_2/Universal_Widgets/our_amazing_service_button_retangle.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Universal_Widgets/our_details.dart';
import '../../../../Our_Properties_Details_Page_Desktop/Desktop_Components/property_location.dart';

class ContactFormDesktop extends StatelessWidget {
  const ContactFormDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomText(
          title: AllStaticText.speakToTeamText,
          fontColor: ColorManager.greenColor,
          fontSize: 10.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 1.sh*0.020,),

        CustomText(
          title: AllStaticText.workingHourText,
          fontColor: ColorManager.blackColor,
          fontSize: 3.sp,
          fontWeight: FontWeight.bold,
        ),
        SizedBox(height: 1.sh*0.020,),


        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Name
                  CustomText(
                    title: AllStaticText.nameText,
                    fontColor: ColorManager.blackColor,
                    fontSize: 2.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 1.sh*0.010,),
                  CustomTextFormField(
                    labelText: AllStaticText.yourNameText,
                  ),
                  SizedBox(height: 1.sh*0.020,),
              
              
                  //Email
                  CustomText(
                    title: AllStaticText.emailText,
                    fontColor: ColorManager.blackColor,
                    fontSize: 2.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 1.sh*0.010,),
                  CustomTextFormField(
                    labelText: AllStaticText.yourEmailText,
                  ),
                  SizedBox(height: 1.sh*0.020,),
              
              
              
                  //Phone Number
                  CustomText(
                    title: AllStaticText.phoneText,
                    fontColor: ColorManager.blackColor,
                    fontSize: 2.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 1.sh*0.010,),
                  CustomTextFormField(
                    labelText: AllStaticText.yourPhoneText,
                  ),
                  SizedBox(height: 1.sh*0.020,),
              
              
                  //Your Message
                  CustomText(
                    title: AllStaticText.messageText,
                    fontColor: ColorManager.blackColor,
                    fontSize: 2.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(height: 1.sh*0.010,),
                  CustomTextFormField(
                    maxLines: 10,
                  ),
                  SizedBox(height: 1.sh*0.020,),
              
                  OurAmazingServiceButtonRetangle(
                    height: 1.sh*0.050,
                    width: 1.sw*0.1,
                    titleColor: Colors.white,
                    buttonColor: const Color(0xFF4B5EA3),
                    buttonTitle: AllStaticText.buttonText,
                    titleSize: 20,
                    fontWeight: FontWeight.bold,
                  )
              
                ],
              ),
            ),
            SizedBox(width: 1.sh*0.020,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 1.sh*0.020,),

                  OurDetails(
                    icon: Icons.phone,
                    title: AllStaticText.phoneText,
                    secondTitle: AllStaticText.phoneNumberText,

                    fontWeight: FontWeight.w700,
                    iconColor: ColorManager.iconColor,
                    secondFontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 1.sh*0.020,),

                  OurDetails(
                    icon: Icons.mobile_friendly,
                    title: AllStaticText.mobileText,
                    secondTitle: AllStaticText.mobileNumberText,

                    fontWeight: FontWeight.w700,
                    iconColor: ColorManager.iconColor,
                    secondFontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 1.sh*0.020,),

                  OurDetails(
                    icon: Icons.email,
                    title: AllStaticText.emailText,
                    secondTitle: AllStaticText.emailAddressText,

                    fontWeight: FontWeight.w700,
                    iconColor: ColorManager.iconColor,
                    secondFontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 1.sh*0.020,),

                  OurDetails(
                    icon: Icons.location_on,
                    title: AllStaticText.addressText,
                    secondTitle: AllStaticText.fullAddressText,

                    fontWeight: FontWeight.w700,
                    iconColor: ColorManager.iconColor,
                    secondFontWeight: FontWeight.w700,
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 1.sh*0.020,),

        //Property Map Location
        Container(
          width: 1.sw*0.36,
          color: Colors.amber,
          child: PropertyLocation(),
        ),
      ],
    );
  }
}
