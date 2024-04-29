import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:property_rental_2/Pages/Contact_Us_Page/contact_us_page.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Universal_Widgets/service_items.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';

class BuyingServiceOnly extends StatelessWidget {
  const BuyingServiceOnly({super.key});

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
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                    fontWeight: FontWeight.bold,
                    fontSize: 5.sp,
                    fontColor: ColorManager.whiteColor,
                    title: "buying Service (Support Only)",
                  ),
                  CustomText(
                    fontWeight: FontWeight.w700,
                    fontSize: 2.sp,
                    fontColor: ColorManager.whiteColor,
                    title: "For client who wish to take an active role for finding & renting properties",
                  ),
                ],
              ),
            ),

            //Price Section
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "€950",
                ),

                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "incl. VAT",
                ),
              ],
            ),

            ServiceItems(title: "Give expert advice and guidance",),

            SizedBox(height: 15.h,),
            Center(
              child: CustomButton(
                onTap: (){
                  Get.to(ContactUsPage());
                },
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
