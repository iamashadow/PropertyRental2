import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Schedules/Components/Desktop/New_Schedule/new_schedule.dart';
import 'package:property_rental_2/Universal_Widgets/custom_text.dart';

import '../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';

class ScheduleDesktopView extends StatelessWidget {
  const ScheduleDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.webBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            //HeadBanner
            Container(
              height: 1.sh * 0.8,
              width: 1.sw,
              child: HeadBannerSection(),
            ),
            SizedBox(
              height: 1.sh * 0.1,
            ),

            CustomText(
              title: "Your Schedules",
              fontSize: 5.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 1.sh * 0.1,
            ),

            NewSchedule(),


            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh * 0.6,
              color: const Color(0xFF303030),
              child: FooterAreaDesktop(),
            ),
          ],
        ),
      ),
    );
  }
}
