import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../../../Page4/Our_Service_Rates_Page/Components/Desktop_Components/Buying_Service/rental_service_for_landlords.dart';
import '../../Components/Desktop/button_section.dart';
import '../../Components/Desktop/rental_service_for_land_lords.dart';
import '../../Components/Desktop/rental_service_include.dart';
import '../../Components/Desktop/rental_service_list_tile.dart';

class OurRentalServiceDesktop extends StatelessWidget {
  const OurRentalServiceDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            Container(
              height: 1.sh*0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),


            Container(
              width: double.maxFinite,
              color: Colors.white,
              margin: EdgeInsets.symmetric(horizontal: 40.w),
              padding: EdgeInsets.all(10.w),
              alignment: Alignment.center,
              child: Column(
                children: [
                  CustomText(
                    title: AllStaticText.rentalServiceTitle,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontColor: ColorManager.greenColor,
                  ),
                  SizedBox(height: 50.h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(10.h),
                            child: RentalServiceListTile(
                              icon: Icons.check_circle_outline,
                              title: AllStaticText.r1Point1Title,
                              titleColor: ColorManager.blackColor,
                              titleFontSize: 4.sp,
                              titleFontWeight: FontWeight.w700,
                              titleLetterSpacing: 2,
                              subtitle: AllStaticText.r1Point1SubTitle,
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
                              icon: Icons.badge,
                              title: AllStaticText.r1Point2Title,
                              titleColor: ColorManager.blackColor,
                              titleFontSize: 4.sp,
                              titleFontWeight: FontWeight.w700,
                              titleLetterSpacing: 2,
                              subtitle: AllStaticText.r1Point2SubTitle,
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
                              icon: FontAwesomeIcons.personCircleCheck,
                              title: AllStaticText.r1Point3Title,
                              titleColor: ColorManager.blackColor,
                              titleFontSize: 4.sp,
                              titleFontWeight: FontWeight.w700,
                              titleLetterSpacing: 2,
                              subtitle: AllStaticText.r1Point3SubTitle,
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
                              icon: FontAwesomeIcons.clipboardList,
                              title: AllStaticText.r1Point4Title,
                              titleColor: ColorManager.blackColor,
                              titleFontSize: 4.sp,
                              titleFontWeight: FontWeight.w700,
                              titleLetterSpacing: 2,
                              subtitle: AllStaticText.r1Point4SubTitle,
                              subtitleColor: ColorManager.blackColor,
                              subtitleFontSize: 3.sp,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.h,),

                  OurRentalServiceInclude(),
                  SizedBox(height: 50.h,),

                  ButtonSection(),
                  SizedBox(height: 50.h,),

                  RentalServiceForLandLordsPoints(),
                  SizedBox(height: 10.h,),



                ],
              ),
            ),


            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh*0.6,
              color: const Color(0xFF303030),
              child: FooterAreaDesktop(),
            ),

          ],
        ),
      ),
    );
  }
}
