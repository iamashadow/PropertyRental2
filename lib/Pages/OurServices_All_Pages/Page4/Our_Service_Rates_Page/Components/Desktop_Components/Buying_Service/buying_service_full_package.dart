import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:property_rental_2/Universal_Widgets/custom_button.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Universal_Widgets/service_tag.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../Contact_Us_Page/contact_us_page.dart';

class BuyingServiceFullPackage extends StatelessWidget {
  const BuyingServiceFullPackage({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(10.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            //Package Introduction
            Container(
              height: 1.h*90,
              color: ColorManager.kasmiriBlue,
              padding: EdgeInsets.all(4.sp),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    fontWeight: FontWeight.bold,
                    fontSize: 5.sp,
                    fontColor: ColorManager.whiteColor,
                    title: "Buying Service (Full Package)",
                  ),
                  CustomText(
                    fontWeight: FontWeight.w700,
                    fontSize: 2.sp,
                    fontColor: ColorManager.whiteColor,
                    title: "Our buying service is like no other.",
                  ),
                ],
              ),
            ),
        
            //Price Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "€ 3630",
                ),
        
                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "incl. VAT",
                ),
              ],
            ),
        
            ServiceTagsAndLogos(
              fontWeight: FontWeight.w500,
              fontSize: 3.sp,
              fontColor: Colors.blueGrey,
              title: "Attend viewings and assist with the search",
            ),
            Divider(),
        
            ServiceTagsAndLogos(
              fontWeight: FontWeight.w700,
              fontSize: 3.sp,
              fontColor: Colors.blueGrey,
              title: "Facilitate negotiations",
            ),
            Divider(),
        
            ServiceTagsAndLogos(
              fontWeight: FontWeight.w700,
              fontSize: 3.sp,
              fontColor: Colors.blueGrey,
              title: "Give expert advice and guidance",
            ),
            Divider(),
        
            ServiceTagsAndLogos(
              fontWeight: FontWeight.w700,
              fontSize: 3.sp,
              fontColor: Colors.blueGrey,
              title: "Review supporting documents and sales agreements",
            ),
            Divider(),
        
            ServiceTagsAndLogos(
              fontWeight: FontWeight.w700,
              fontSize: 3.sp,
              fontColor: Colors.blueGrey,
              title: "Assist in setting up the notary and all needed inspections",
            ),
            Divider(),


            SizedBox(height: 15.h,),
            Center(
              child: CustomButton(
                onTap: (){Get.to(ContactUsPage());},
                fontWeight: FontWeight.bold,
                fontSize: 3.sp,
                fontColor: ColorManager.whiteColor,
                buttonColor: Colors.brown,
                buttonHeight: 40.h,
                buttonRadius: 10.r,
                buttonTitle: "Click Here",
                buttonWidth: 20.w,
              ),
            ),
            
            
          ],
        ),
      ),
    );
  }
}
