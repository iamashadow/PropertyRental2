import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Details_Page/Our_Team_Details_Page/our_team_details_page.dart';
import 'package:property_rental_2/Pages/About_Us_All_Pages/Page2/Team_Page/Our_Team_Page/our_team_page.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/List_of_Team_Members/list_of_team_members.dart';

class OurTeamPageDesktop extends StatelessWidget {
  const OurTeamPageDesktop({super.key});

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
              child: const HeadBannerSection(),
            ),
            SizedBox(height: 1.sh*0.1,),

            //Team members half details & Navigating to full details Page
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 200),
              child: ListOfTeamMembersDesktop(),
            ),

            //WebFooter Area
            Container(
              width: 1.sw,
              height: 1.sh*0.6,
              color: const Color(0xFF303030),
              child: const FooterAreaDesktop(),
            ),

          ],
        ),
      ),
    );
  }
}
