import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:property_rental_2/Pages/LandLord_Sector/controller/land_lord_profile_information_controller.dart';
import 'package:property_rental_2/Universal_Widgets/ListView.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';
import '../../../../../../Universal_Widgets/footer_area_desktop.dart';
import '../../../../../../Utils/Color_Manager/colo_manager.dart';
import '../../../../../Home_Page/Components/Desktop_Component/HeadBannerSection/head_banner_section.dart';

class LandLordPropertiesDesktop extends StatefulWidget {
  LandLordPropertiesDesktop({super.key});

  @override
  State<LandLordPropertiesDesktop> createState() =>
      _LandLordPropertiesDesktopState();
}

class _LandLordPropertiesDesktopState extends State<LandLordPropertiesDesktop> {
  final OurPropertiseController controller = Get.find();
  final LandLordProfileInformationControllerClass landLordController =
      Get.find();
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      landLordController.getLandLordProfile();
      controller.getLandLordPropertise();
    });
    super.initState();
  }

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
            Obx(
              () => controller.isLoading.value == true
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : MyListView(
                      controller: controller,
                      properList: controller.landLordProperties.value ?? [],
                    ),
            ),
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
