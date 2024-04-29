import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../../../Universal_Widgets/custom_button.dart';
import '../../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../../Utils/All_Static_Texts/all_static_text.dart';
import '../../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Contact_Us_Page/contact_us_page.dart';
import '../../../../../Page3/Our_Rental_Service_Page/Components/Desktop/rental_service_list_tile.dart';
import '../Sales_Service_Package_Points/sales_service_package_points.dart';

class MiddlePartOfThePage extends StatelessWidget {
  const MiddlePartOfThePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 50.h),
      padding: EdgeInsets.all(10.sp),
      color: ColorManager.whiteColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomText(
            title: AllStaticText.OurSalesServiceTitle,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontColor: ColorManager.greenColor,
          ),
          SizedBox(height: 30.h,),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: Icons.check,
                      title: AllStaticText.OurSalesServiceR1C1Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurSalesServiceR1C1SubTitle,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.moneyBill1,
                      title: AllStaticText.OurSalesServiceR1C2Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurSalesServiceR1C2SubTitle,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.handSparkles,
                      title: AllStaticText.OurSalesServiceR1C3Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurSalesServiceR1C3SubTitle,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.moneyBill1,
                      title: AllStaticText.OurSalesServiceR2C1Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurSalesServiceR2C1SubTitle,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.h),
                    child: RentalServiceListTile(
                      icon: FontAwesomeIcons.chartPie,
                      title: AllStaticText.OurSalesServiceR2C2Title,
                      titleColor: ColorManager.blackColor,
                      titleFontSize: 4.sp,
                      titleFontWeight: FontWeight.w700,
                      titleLetterSpacing: 2,
                      subtitle: AllStaticText.OurSalesServiceR2C2SubTitle,
                      subtitleColor: ColorManager.blackColor,
                      subtitleFontSize: 3.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50.h,),

          CustomButton(
            fontColor: ColorManager.whiteColor,
            fontSize: 3.sp,
            fontWeight: FontWeight.bold,
            buttonWidth: 60.w,
            buttonTitle: AllStaticText.ContactUsAboutSellingYourProperty,
            buttonRadius: 2.r,
            buttonHeight: 40.h,
            buttonColor: ColorManager.greenColor,
            onTap: (){
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ContactUsPage()),
              );
            },
          ),
          SizedBox(height: 70.h,),


          CustomText(
            title: AllStaticText.SalesServicePackage,
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            fontColor: ColorManager.greenColor,
          ),
          SizedBox(height: 30.h,),


          CustomText(
            title: AllStaticText.salesIntro,
            fontSize: 3.sp,
            fontColor: ColorManager.blackColor,
          ),
          SizedBox(height: 10.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP1Title,
            description: AllStaticText.SalesServicePackageP1Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP2Title,
            description: AllStaticText.SalesServicePackageP2Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP3Title,
            description: AllStaticText.SalesServicePackageP3Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP4Title,
            description: AllStaticText.SalesServicePackageP4Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP5Title,
            description: AllStaticText.SalesServicePackageP5Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP6Title,
            description: AllStaticText.SalesServicePackageP6Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP7Title,
            description: AllStaticText.SalesServicePackageP7Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP8Title,
            description: AllStaticText.SalesServicePackageP8Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP9Title,
            description: AllStaticText.SalesServicePackageP9Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP10Title,
            description: AllStaticText.SalesServicePackageP10Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP11Title,
            description: AllStaticText.SalesServicePackageP11Description,
          ),
          SizedBox(height: 5.h,),

          SalesServicePackagePoints(
            title: AllStaticText.SalesServicePackageP12Title,
            description: AllStaticText.SalesServicePackageP12Description,
          ),
          SizedBox(height: 5.h,),


        ],
      ),
    );
  }
}
