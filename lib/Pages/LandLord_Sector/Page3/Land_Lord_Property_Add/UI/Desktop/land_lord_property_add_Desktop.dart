import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/Page3/Land_Lord_Property_Add/land_lord_property_add_controller.dart';

import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';
import '../../Components/Desktop/Add_Property/add_property.dart';

class LandLordPropertyAddDesktop extends StatelessWidget {
  const LandLordPropertyAddDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandLordPropertyAddController>(
      init: LandLordPropertyAddController(),
      builder: (controller) => Scaffold(
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

              AddProperty(),

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
      ),
    );
  }
}
