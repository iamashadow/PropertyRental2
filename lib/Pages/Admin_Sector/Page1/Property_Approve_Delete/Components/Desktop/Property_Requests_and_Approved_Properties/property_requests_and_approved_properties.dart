import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:property_rental_2/Pages/Admin_Sector/Page1/Property_Approve_Delete/admin_property_controller.dart';
import 'package:property_rental_2/controller/our_propertise_controller.dart';

import '../../../../../../FAQS_Page/Components/Desktop_Components/Tabs/Buying_A_Property/buying_a_property.dart';
import '../../../../../../FAQS_Page/Components/Desktop_Components/Tabs/Rental_Search/rental_search.dart';
import '../Approved_Properties/approved_properties.dart';
import '../Property_Approve_Requests/property_approve_requests.dart';

class ProeprtyRequestsAndApprovedProperties extends StatefulWidget {
  ProeprtyRequestsAndApprovedProperties({super.key});

  @override
  State<ProeprtyRequestsAndApprovedProperties> createState() =>
      _ProeprtyRequestsAndApprovedPropertiesState();
}

class _ProeprtyRequestsAndApprovedPropertiesState
    extends State<ProeprtyRequestsAndApprovedProperties>
    with SingleTickerProviderStateMixin {
  final OurPropertiseController controller =
      Get.find<OurPropertiseController>();
  late TabController tabController;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controller.getAdminPropertise();
    });
    tabController = TabController(length: 2, vsync: this);
  }

  var propertyController = Get.put(AdminPropertyControllerClass());

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      //TabBar
      Container(
        alignment: Alignment.centerLeft,
        child: TabBar(
            controller: tabController,
            onTap: (value) {
              propertyController.propertyController.value = value;
            },
            isScrollable: true,
            unselectedLabelColor: Colors.blueGrey,
            labelPadding: EdgeInsets.only(left: 0, right: 20.w),
            tabs: const [
              Tab(
                text: "Property Approve Requests",
              ),
              Tab(
                text: "Approved Properties",
              ),
            ]),
      ),

      //TabBarView

      // IndexedStack(
      //   index: propertyController.propertyController.value,
      //   children: [
      //     PropertyApproveRequests(),
      //     ApproveProperties(),
      //
      //   ],
      // ),

      Expanded(
        child: TabBarView(
          controller: tabController,
          children: [
            Obx(
              () => controller.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : PropertyApproveRequests(
                      controller: controller,
                      propertyInfo: controller.adminPropertise.value ?? [],
                    ),
            ),
            ApproveProperties(),
          ],
        ),
      )
    ]);
  }
}
