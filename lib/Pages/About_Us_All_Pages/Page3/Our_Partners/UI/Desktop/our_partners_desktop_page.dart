import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Universal_Widgets/custom_text.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop/Partners_Logo_GridView/partnrs_logo_gridview.dart';

class OurPartnersDesktopPage extends StatelessWidget {
  const OurPartnersDesktopPage({super.key});

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

            CustomText(
              title: "Our Partners",
              fontSize: 10.sp,
              fontColor: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            PartnersLogoGridView(
              leftMargin: 70.w,
              rightMargin: 70.w,
              // bottomMargin: 50.h,
              scrollPhysics: NeverScrollableScrollPhysics(),
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
