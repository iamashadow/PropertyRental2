import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Middle_Part_of_the_page/middle_part_of the_page.dart';

class OurSaleServiceDesktopPage extends StatelessWidget {
  const OurSaleServiceDesktopPage({super.key});

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

            MiddlePartOfThePage(),


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
