import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';
import 'package:property_rental_2/Utils/All_Images/all_images.dart';
import 'package:property_rental_2/Utils/All_Static_Texts/all_static_text.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Icon_Components/icon_components.dart';

class AboutUsOurStoryDesktopPage extends StatelessWidget {
  const AboutUsOurStoryDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              margin: EdgeInsets.only(left: 50.w, right: 50.w, bottom: 50.h),
              padding: EdgeInsets.all(10.sp),
              color: ColorManager.whiteColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //About_Us_Image1
                  Container(
                    height: 1.sh*0.70,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AllImages.ourStoryHeadImage),
                        )
                    ),
                  ),
                  SizedBox(height: 50.h),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        //Why Choose Us Text?
                        CustomText(
                          title: AllStaticText.whyChooseUsText,
                          fontWeight: FontWeight.bold,
                          fontColor: ColorManager.greenColor.withOpacity(0.7),
                          fontSize: 5.sp,
                        ),
                        SizedBox(height: 50.h),

                        //Why Choose us Description?
                        CustomText(
                          title: AllStaticText.whyChooseUsDescriptionText,
                          fontWeight: FontWeight.w200,
                          fontColor: ColorManager.blackColor,
                          fontSize: 03.sp,
                        ),
                        SizedBox(height: 1.sh*0.1,),


                        //Icons & References
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconComponents(
                              myIcon: FontAwesomeIcons.handshake,
                              iconDetails: AllStaticText.logo1,
                            ),

                            Column(
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 90.h,
                                  decoration: const BoxDecoration(
                                    // color: Colors.amber,
                                      image: DecorationImage(
                                        image: AssetImage(AllImages.about_us_badge_ribbon),
                                      )
                                  ),
                                ),
                                SizedBox(height: 1.h*20,),
                                CustomText(
                                  title: "Exceptional Service",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 3.sp,
                                  fontColor: ColorManager.blackColor,
                                ),
                              ],
                            ),

                            IconComponents(
                              myIcon: FontAwesomeIcons.euroSign,
                              iconDetails: AllStaticText.logo3,
                            ),
                          ],
                        ),
                        SizedBox(height: 1.sh*0.1,),
                      ],
                    ),
                  ),

                  //About_Us_Image2
                  Container(
                    height: 1.sh*0.9,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(AllImages.aboutUsImage3),
                        )
                    ),
                  ),
                  SizedBox(height: 1.sh*0.1,),

                ],
              ),
            ),


            //WebFooter Area
            SizedBox(height: 1.sh*0.1,),
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
