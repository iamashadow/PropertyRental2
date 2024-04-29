import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Universal_Widgets/service_items.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Contact_Us_Page/contact_us_page.dart';

class RentalServiceForLandLords extends StatelessWidget {
  const RentalServiceForLandLords({super.key});

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
              color: ColorManager.greenColor,
              padding: EdgeInsets.all(4.sp),
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                    fontWeight: FontWeight.bold,
                    fontSize: 5.sp,
                    fontColor: ColorManager.whiteColor,
                    title: "Rental Service For Landlords",
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
                  title: "€1 month's rent",
                ),

                CustomText(
                  fontWeight: FontWeight.bold,
                  fontSize: 5.sp,
                  fontColor: Colors.blueGrey,
                  title: "+ incl. VAT",
                ),
              ],
            ),

            ServiceItems(title: "We will find you a trustworthy & suitable tenant in no time.",),

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
