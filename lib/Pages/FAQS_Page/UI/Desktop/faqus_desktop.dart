import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:property_rental_2/Utils/Color_Manager/colo_manager.dart';

import '../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop_Components/Basic_Questions/basic_questions.dart';
import '../../faqs_controller.dart';

class FaqsDesktop extends StatelessWidget {
  FaqsDesktop({super.key});

  final tabIndex = Get.put(FaqsController());


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


            //Basic Questions
            Obx(() => Container(
              margin: EdgeInsets.only(left: 50.w, right: 50.w),
              color: Colors.white,
                height: tabIndex.tabBarIndex.value == 0 ? 1.sh*1.2 :
                tabIndex.tabBarIndex.value == 1 ? 1.sh*0.7 :
                tabIndex.tabBarIndex.value == 2 ? 1.sh*0.5 :
                tabIndex.tabBarIndex.value == 3 ? 1.sh*0.5 : null,
                width: 0.7.sw,
                child: BasicQuestions()
            ),),
        
        
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
